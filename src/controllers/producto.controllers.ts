import e, { Request, Response } from "express";
import { _createProducto, _getProductos } from "../services/producto.services";
import { Producto } from "../interfaces/producto";
import { Categoria } from "../interfaces/categoria";

export const getProductos = async (req: Request, res: Response) => {
  try {
    const response = await _getProductos();
    res.status(response.status).json(response.items);
  } catch (error) {
    console.log(error);
  }
};

export const createProducto = async (req: Request, res: Response) => {
  const {
    sku,
    marca,
    nombre,
    precio_normal,
    precio_rebajado,
    stock,
    descripcion,
    especificaciones,
    imagenes,
    categorias,
  } = req.body;

  try {
    const producto: Producto = {
      sku,
      marca,
      nombre,
      precio_normal,
      precio_rebajado,
      stock,
      descripcion,
      especificaciones,
      imagenes,
    };

    const response = await _createProducto(producto, categorias);

    res.status(response.status).json(response);
  } catch (error) {
    res.status(400).json({ e: "a ocurrido un error", error });
  }
};
