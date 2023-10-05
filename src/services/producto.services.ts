import { Json } from "sequelize/types/utils";
import { Producto as ProductoInterfaces } from "../interfaces/producto";
import { Producto } from "../models/producto.model";
import { Categoria_Producto } from "../models/categoria_producto.model";
import { Categoria } from "../models/categoria.model";

export const _getProductos = async () => {
  const items = await Categoria_Producto.findAll({
    include: [{ model: Producto }, { model: Categoria }],
    attributes: { exclude: ["categoria_id", "producto_id"] },
  });

  return { items, status: 200 };
};

export const _createProducto = async (
  producto: ProductoInterfaces,
  categorias: number[]
) => {
  try {
    await Producto.create(producto);
    const productoCreado = await Producto.findOne({
      where: { sku: producto.sku },
    });

    for (let categoria of categorias) {
      await Categoria_Producto.create({
        categoria_id: categoria,
        producto_id: productoCreado?.producto_id || 0,
      });
    }
  } catch (error) {
    return {
      msg: "A ocurrido un error al crear producto",
      status: 400,
      error,
    };
  }

  return {
    msg: "producto creado exitosamente",
    status: 200,
  };
};
