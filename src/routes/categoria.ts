import { Router } from "express";
import {
  getCategoria,
  getCategorias,
  getSubCategorias,
} from "../controllers/categoria.controllers";

const router = Router();

router.get("", getCategorias);
router.get("/:parent_id", getSubCategorias);
router.get("/nombre/:nombre", getCategoria);

export { router };
