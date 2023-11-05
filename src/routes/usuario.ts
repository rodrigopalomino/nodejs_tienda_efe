import { Router } from "express";
import {
  login,
  signIn,
  updateEmail,
  updatePassword,
  updateUsuario,
} from "../controllers/usuario.controllers";
import {
  ValidateLogin,
  ValidateSignIn,
  ValidateUpdateEmail,
  ValidateUpdatePassword,
  ValidateUpdateUsuario,
} from "../validations/usuario";
import { validateToken } from "../middlewares/validate-token";

const router = Router();

router.post("/signIn", ValidateSignIn, signIn);
router.post("/login", ValidateLogin, login);
router.put("/update", validateToken, ValidateUpdateUsuario, updateUsuario);
router.put(
  "/updatePassword",
  validateToken,
  ValidateUpdatePassword,
  updatePassword
);
router.put("/updateEmail", validateToken, ValidateUpdateEmail, updateEmail);

export { router };
