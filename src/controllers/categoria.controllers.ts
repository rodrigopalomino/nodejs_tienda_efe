import { Request, Response } from "express";
import { _getCategorias } from "../services/categoria.services";

export const getCategorias = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const response = await _getCategorias(id);
    res.status(response.status).json(response.items);
  } catch (error) {
    console.log(error);
  }
};
