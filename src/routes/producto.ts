import { Router } from "express";
import {
  createProducto,
  getProductos,
  getProductosDestacados,
  importarProductos,
} from "../controllers/producto.controllers";
import { ValidateCreateProducto } from "../validations/producto";
import { upload } from "../middlewares/uploadFile.middleware";

const router = Router();

router.post("/create", ValidateCreateProducto, createProducto);
router.post("/import", upload, importarProductos);
router.post("", getProductos);
router.get("/destacado/:id", getProductosDestacados);

export { router };
