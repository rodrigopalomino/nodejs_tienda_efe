import { Json } from "sequelize/types/utils";
import { Producto as ProductoInterfaces } from "../interfaces/producto";
import { Producto } from "../models/producto.model";
import { Categoria_Producto } from "../models/categoria_producto.model";

export const _getProductos = async () => {
  const items = await Producto.findAll();

  return { items, status: 200 };
};

export const _createProducto = async (
  producto: ProductoInterfaces
  // categorias: number[]
) => {
  await Producto.create(producto);

  // const productoCreado = await Producto.findOne({
  //   where: { sku: producto.sku },
  // });

  // for (let categoria of categorias) {
  //   await Categoria_Producto.create({
  //     categoria_id: categoria,
  //     producto_id: productoCreado?.producto_id || 0,
  //   });
  // }

  return {
    msg: "producto creado exitosamente",
    status: 200,
  };
};
