import { Router } from "express";
import { getCategorias } from "../controllers/categoria.controllers";

const router = Router();

router.get("/:id", getCategorias);

export { router };
