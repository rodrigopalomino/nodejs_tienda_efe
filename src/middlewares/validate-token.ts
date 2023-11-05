import { NextFunction, Request, Response } from "express";
import jwt from "jsonwebtoken";
import { DecodedToken } from "../interfaces/decodeToken";

export const validateToken = (
  req: Request,
  res: Response,
  next: NextFunction
) => {
  const tokenCookie = req.cookies.token;

  if (!tokenCookie) {
    return res.status(401).json({ msg: "no se encontro token en las cookies" });
  }

  try {
    const decodeToken = jwt.verify(
      tokenCookie,
      process.env.SECRET_KEY || "contraseña"
    ) as DecodedToken;

    const tiempoActual = Math.floor(Date.now() / 1000);

    if (decodeToken.exp && tiempoActual > decodeToken.exp) {
      return res.status(401).json({ msg: "token expirado" });
    }

    req.decodeToken = decodeToken;

    next();
  } catch (error) {
    res.status(401).json({ msg: "token no valido", error });
  }
};
