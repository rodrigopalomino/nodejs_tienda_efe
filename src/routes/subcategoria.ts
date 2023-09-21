import { Router } from "express";
import { getGeneral } from "../controllers/general.controllers";
import { getSubcategoria } from "../controllers/subcategoria.controllers";

const router = Router();

router.get("/:id", getSubcategoria);

export { router };
