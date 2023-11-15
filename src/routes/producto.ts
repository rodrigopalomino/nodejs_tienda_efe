import { Router } from "express";
import {
  countProducto,
  createProducto,
  getProducto,
  getProductos,
  getProductosDestacados,
  importarProductos,
} from "../controllers/producto.controllers";
import { ValidateCreateProducto } from "../validations/producto";
import { upload } from "../middlewares/uploadFile.middleware";

const router = Router();

//crear
router.post("/create", ValidateCreateProducto, createProducto);
//importar de exel
router.post("/import", upload, importarProductos);

//productos con categoria
router.post("", getProductos);

//productos para la pantalla principal
router.get("/destacado/:id", getProductosDestacados);

//solo un producto
router.get("/:nombre", getProducto);

//cantidad
router.get("/count/:categoria", countProducto);

export { router };
