import { Request, Response } from "express";
import {
  _getCategoria,
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
  const { parent_id } = req.params;

  try {
    const response = await _getSubCategorias(parent_id);
    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const getCategoria = async (req: Request, res: Response) => {
  const { nombre } = req.params;

  try {
    const response = await _getCategoria(nombre);
    res.status(response.status).json(response.item);
  } catch (error) {
    res.status(400).json(error);
  }
};
