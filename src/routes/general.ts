import { Router } from "express";
import { getGeneral } from "../controllers/general.controllers";

const router = Router();

router.get("", getGeneral);

export { router };
