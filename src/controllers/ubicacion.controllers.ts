import { Request, Response } from "express";
import {
  _getSubUbicaciones,
  _getUbicaciones,
} from "../services/ubicacion.services";

export const getUbicaciones = async (req: Request, res: Response) => {
  try {
    const response = await _getUbicaciones();
    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(500).json(error);
  }
};
export const getSubUbicaciones = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const response = await _getSubUbicaciones(id);
    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(500).json(error);
  }
};
