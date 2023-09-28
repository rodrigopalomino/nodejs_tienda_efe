import { Request, Response } from "express";
import { _getCategorias } from "../services/categoria.services";

export const getCategorias = async (req: Request, res: Response) => {
  const { id } = req.params;

  const parent_id: string | null = id === "null" ? null : id;

  try {
    console.log("todo bien");
    const response = await _getCategorias(parent_id);
    res.json(response.items);
  } catch (error) {
    console.log(error);
  }
};
