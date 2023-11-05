import e, { Request, Response } from "express";
import {
  _createProducto,
  _getProductos,
  _getProductosDestacados,
  _importProdcutos,
} from "../services/producto.services";
import { Producto } from "../interfaces/producto";

export const createProducto = async (req: Request, res: Response) => {
  const {
    sku,
    marca,
    nombre,
    precio,
    oferta,
    descripcion,
    categorias,
    especificaciones,
    campos,
    imagenes,
    destacado,
  } = req.body;

  const producto: Producto = {
    sku,
    marca,
    nombre,
    precio,
    oferta,
    descripcion,
    destacado,
  };

  try {
    const response = await _createProducto(
      producto,
      categorias,
      especificaciones,
      campos,
      imagenes
    );

    res.status(response.status).json(response);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const getProductos = async (req: Request, res: Response) => {
  const { categoria, inicio, final, marca } = req.body;

  try {
    const response = await _getProductos(
      parseInt(categoria),
      inicio,
      final,
      marca
    );

    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const getProductosDestacados = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const response = await _getProductosDestacados(id);
    res.status(response.status).json(response.items);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const importarProductos = async (req: Request, res: Response) => {
  try {
    const response = await _importProdcutos();
    res.status(response.status).json(response);
  } catch (error) {
    console.log(error);

    res.status(400).json({ msg: "mal", error });
  }
};
