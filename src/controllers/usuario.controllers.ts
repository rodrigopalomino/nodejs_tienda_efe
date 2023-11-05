import { Request, Response } from "express";
import { Usuario, UsuarioUpdate } from "../interfaces/usuario";
import {
  _login,
  _signIn,
  _updateEmail,
  _updatePassword,
  _updateUsuario,
} from "../services/usuario.services";

export const signIn = async (req: Request, res: Response) => {
  const {
    nombre,
    apellido,
    celular,
    email,
    documento_id,
    n_documento,
    password,
  } = req.body;

  const usuario: Usuario = {
    nombre,
    apellido,
    celular,
    email,
    documento_id,
    n_documento,
    password,
  };

  try {
    const response = await _signIn(usuario);
    res.status(response.status).json(response);
  } catch (error) {
    res.status(500).json(error);
  }
};

export const login = async (req: Request, res: Response) => {
  const { email, password } = req.body;

  try {
    const response = await _login(email, password);
    res.cookie("token", response.token, {
      //expiracion del cookie en 1 hora
      // 1000 => 1 segundo
      maxAge: 1000 * 60 * 60,
      //Establece que la cookie solo es accesible por metodos http y no directamente de js en el navagador
      httpOnly: true,
      sameSite: "lax",
    });
    delete response.token;
    res.status(response.status).json(response);
  } catch (error) {
    res.status(500).json(error);
  }
};

export const updateUsuario = async (req: Request, res: Response) => {
  const usuario_id: number = req.decodeToken!.usuario_id;
  const { nombre, apellido, celular, documento_id, n_documento } = req.body;

  const usuario: UsuarioUpdate = {
    nombre,
    apellido,
    celular,
    documento_id,
    n_documento,
  };

  try {
    const response = await _updateUsuario(usuario_id, usuario);
    res.status(response.status).json(response);
  } catch (error) {
    res.status(500).json(error);
  }
};

export const updatePassword = async (req: Request, res: Response) => {
  const { password, nuevoPassword } = req.body;
  const usuario_id: number = req.decodeToken!.usuario_id;

  try {
    const response = await _updatePassword(usuario_id, password, nuevoPassword);
    res.clearCookie("token");
    res.status(response.status).json(response);
  } catch (error) {
    res.status(500).json(error);
  }
};

export const updateEmail = async (req: Request, res: Response) => {
  const { nuevoEmail, password } = req.body;
  const usuario_id: number = req.decodeToken!.usuario_id;

  try {
    const response = await _updateEmail(usuario_id, nuevoEmail, password);
    res.clearCookie("token");
    res.status(response.status).json(response);
  } catch (error) {
    res.status(500).json(error);
  }
};
