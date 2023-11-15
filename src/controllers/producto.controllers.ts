import { Request, Response } from "express";
import {
  _countProducto,
  _createProducto,
  _getProducto,
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
  const { categoria, inicio, cantidad } = req.body;

  try {
    const response = await _getProductos(categoria, inicio, cantidad);

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

export const getProducto = async (req: Request, res: Response) => {
  const { nombre } = req.params;

  try {
    const response = await _getProducto(nombre);
    res.status(response.status).json(response.item);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const countProducto = async (req: Request, res: Response) => {
  const { categoria } = req.params;
  try {
    const response = await _countProducto(parseInt(categoria));
    res.status(response.status).json(response.countProductos);
  } catch (error) {
    res.status(400).json(error);
  }
};

export const countProductos = async (req: Request, res: Response) => {};
