import { Request, Response } from "express";
import { _createProducto, _getProductos } from "../services/producto.services";
import { Producto } from "../interfaces/producto";

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
  } = req.body;

  let imagenesJSON: any;

  if (typeof imagenes === "string" && imagenes.trim() !== "") {
    try {
      imagenesJSON = JSON.parse(imagenes);
    } catch (error) {
      console.log("No se puedo analizar la imagen");
      imagenesJSON = [
        "https://www.webempresa.com/foro/wp-content/uploads/wpforo/attachments/3200/318277=80538-Sin_imagen_disponible.jpg",
      ];
    }
  } else {
    imagenesJSON = [
      "https://www.webempresa.com/foro/wp-content/uploads/wpforo/attachments/3200/318277=80538-Sin_imagen_disponible.jpg",
    ];
  }

  const producto: Producto = {
    sku,
    marca,
    nombre,
    precio_normal,
    precio_rebajado,
    stock,
    descripcion,
    especificaciones,
    imagenes: imagenesJSON,
  };

  try {
    console.log(producto);
    const response = await _createProducto(producto);

    res.status(response.status).json(response);
  } catch (error) {
    console.log(error);
  }
};
