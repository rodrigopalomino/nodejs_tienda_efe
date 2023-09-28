import { Router } from "express";
import {
  createProducto,
  getProductos,
} from "../controllers/producto.controllers";

const router = Router();

router.get("", getProductos);
router.post("/create", createProducto);

export { router };
