import { NextFunction, Request, Response } from "express";
import { check } from "express-validator";
import { validateResult } from "../utils/validations";

const ValidateSignIn: any = [
  check("nombre").exists().not().isEmpty(),
  check("apellido").exists().not().isEmpty(),
  check("celular").exists().not().isEmpty(),
  check("email").exists().not().isEmpty().isEmail(),
  check("documento_id").exists().not().isEmpty().isNumeric(),
  check("n_documento").exists().not().isEmpty(),
  check("password").exists().not().isEmpty(),

  (req: Request, res: Response, next: NextFunction) => {
    validateResult(req, res, next);
  },
];

const ValidateLogin: any = [
  check("email").exists().not().isEmpty().isEmail(),
  check("password").exists().not().isEmpty(),

  (req: Request, res: Response, next: NextFunction) => {
    validateResult(req, res, next);
  },
];

const ValidateUpdateUsuario: any = [
  check("nombre").exists().not().isEmpty(),
  check("apellido").exists().not().isEmpty(),
  check("celular").exists().not().isEmpty(),
  check("documento_id").exists().not().isEmpty(),
  check("n_documento").exists().not().isEmpty(),

  (req: Request, res: Response, next: NextFunction) => {
    validateResult(req, res, next);
  },
];

const ValidateUpdatePassword: any = [
  check("password").exists().not().isEmpty(),
  check("nuevoPassword").exists().not().isEmpty(),

  (req: Request, res: Response, next: NextFunction) => {
    validateResult(req, res, next);
  },
];

const ValidateUpdateEmail: any = [
  check("email").exists().not().isEmpty().isEmail(),
  check("password").exists().not().isEmpty(),

  (req: Request, res: Response, next: NextFunction) => {
    validateResult(req, res, next);
  },
];

export {
  ValidateSignIn,
  ValidateLogin,
  ValidateUpdateUsuario,
  ValidateUpdatePassword,
  ValidateUpdateEmail,
};
