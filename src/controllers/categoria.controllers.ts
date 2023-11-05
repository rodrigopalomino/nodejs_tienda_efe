import { Request, Response } from "express";
import {
  _getCategorias,
  _getSubCategorias,
} from "../services/categoria.services";

export const getCategorias = async (req: Request, res: Response) => {
  try {
    const response = await _getCategorias();
    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const getSubCategorias = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const response = await _getSubCategorias(id);
    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(400).json(error);
  }
};
