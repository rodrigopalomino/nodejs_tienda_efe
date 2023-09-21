import { Request, Response } from "express";
import { _getSubcategoria } from "../services/subcategoria.services";

export const getSubcategoria = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const response = await _getSubcategoria(id);
    res.status(response.status).json(response.items);
  } catch (error) {
    console.log(error);
  }
};
