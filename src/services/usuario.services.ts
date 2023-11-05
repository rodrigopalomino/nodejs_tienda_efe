import {
  Usuario as UsuarioInterface,
  UsuarioUpdate,
} from "../interfaces/usuario";
import { Usuario, UsuarioModel } from "../models/usuario.model";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";

export const _signIn = async (usuario: UsuarioInterface) => {
  const user = await Usuario.findOne({ where: { email: usuario.email } });

  if (user) {
    return { msg: "Ya existe una cuenta con este email", status: 400 };
  }

  const hashPassword = await bcrypt.hash(usuario.password, 8);
  usuario.password = hashPassword;

  try {
    await Usuario.create<UsuarioModel>(usuario);
    return { msg: "usuario creado", status: 200 };
  } catch (error) {
    return { msg: "error al crear usuario", status: 400 };
  }
};

export const _login = async (email: string, password: string) => {
  const user = await Usuario.findOne({ where: { email: email } });

  if (!user) {
    return { msg: "Email no existente", status: 400 };
  }

  if (!(await bcrypt.compare(password, user.password))) {
    return { msg: "contraseña incorrecta", status: 400 };
  }

  const tokenData = {
    usuario_id: user.usuario_id,
    nombre: user.nombre,
    apellido: user.apellido,
    celular: user.celular,
    email: user.email,
    exp: Math.floor(Date.now() / 1000) + 60 * 60 * 2,
  };

  const secretKey = process.env.SECRET_KEY || "contraseña";

  const token = jwt.sign(tokenData, secretKey);
  return { msg: "ingreso exitoso", token, status: 200 };
};

export const _updateUsuario = async (
  usuario_id: number,
  usuarioNuevo: UsuarioUpdate
) => {
  try {
    const rows = await Usuario.update(usuarioNuevo, {
      where: { usuario_id: usuario_id },
    });
    return { msg: "usuario actualizado", rows, status: 200 };
  } catch (error) {
    console.log(error);
    return { msg: "error al actulizar usuario", status: 400, error };
  }
};

export const _updatePassword = async (
  usuario_id: number,
  password: string,
  nuevoPassword: string
) => {
  const usuario = await Usuario.findOne({ where: { usuario_id: usuario_id } });

  if (!(await bcrypt.compare(password, usuario!.password))) {
    return { msg: "contraseña incorrecta", status: 400 };
  }

  const hashPassword = await bcrypt.hash(nuevoPassword, 8);

  try {
    const rows = await Usuario.update(
      { password: hashPassword },
      { where: { usuario_id: usuario_id } }
    );
    return { msg: "contraseña actualizada", rows, status: 200 };
  } catch (error) {
    return { msg: "error al actulizar password", status: 400, error };
  }
};

export const _updateEmail = async (
  usuario_id: number,
  nuevoEmail: string,
  password: string
) => {
  const usuario = await Usuario.findOne({ where: { usuario_id: usuario_id } });

  if (!(await bcrypt.compare(password, usuario!.password))) {
    return { msg: "contraseña incorrecta", status: 400 };
  }
  usuario!.email = nuevoEmail;

  try {
    await usuario!.save();
    return { msg: "email actualizada", status: 200 };
  } catch (error) {
    return { msg: "error al actulizar password", status: 400, error };
  }
};
