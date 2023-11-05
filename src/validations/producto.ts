import { check } from "express-validator";
import { validateResult } from "../utils/validations";
import { NextFunction, Request, Response } from "express";

export const ValidateCreateProducto: any = [
  check("sku").exists().not().isEmpty(),
  check("marca").exists().not().isEmpty(),
  check("nombre").exists().not().isEmpty(),
  check("precio").exists().not().isEmpty().isNumeric(),
  check("oferta").exists().not().isEmpty().isNumeric(),
  check("descripcion").exists().not().isEmpty(),
  check("destacado").exists().not().isEmpty().isNumeric(),
  check("categorias").exists().not().isEmpty().isArray(),
  check("especificaciones").exists().not().isEmpty().isArray(),
  check("campos").exists().not().isEmpty().isArray(),
  check("imagenes").exists().not().isEmpty().isArray(),
  (req: Request, res: Response, next: NextFunction) => {
    validateResult(req, res, next);
  },
];
