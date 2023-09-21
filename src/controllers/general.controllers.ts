import { Request, Response } from "express";
import { _getGeneral } from "../services/general.services";

export const getGeneral = async (req: Request, res: Response) => {
  try {
    const response = await _getGeneral();
    res.status(response.status).json(response.items);
  } catch (error) {
    console.log(error);
  }
};
