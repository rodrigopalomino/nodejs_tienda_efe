import { Router } from "express";
import {
  getSubUbicaciones,
  getUbicaciones,
} from "../controllers/ubicacion.controllers";

const router = Router();

router.get("", getUbicaciones);
router.get("/:id", getSubUbicaciones);

export { router };
