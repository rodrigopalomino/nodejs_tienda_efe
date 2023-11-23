import { Sequelize, Op } from "sequelize";
import sequelize from "../db/connection";
import {
  FetchProducto,
  ProductoBaseDatos,
  Producto as ProductoInterface,
} from "../interfaces/producto";
import { Categoria } from "../models/categoria.model";
import { Categoria_Producto } from "../models/categoria_producto.model";
import { Especificacion } from "../models/especificacion.model";
import { Imagen } from "../models/imagen.model";
import { Producto } from "../models/producto.model";
import { leerExel } from "../utils/leerExel";

export const _createProducto = async (
  producto: ProductoInterface,
  categorias: number[],
  especificaciones: string[],
  campos: string[],
  imagenes: string[]
) => {
  try {
    if (await Producto.findOne({ where: { sku: producto.sku } })) {
      return { msg: "sku en uso", status: 400 };
    }

    for (const categoria of categorias) {
      const categoriaExitente = await Categoria.findOne({
        where: { categoria_id: categoria },
      });

      if (!categoriaExitente) {
        return {
          msg: `Error _createProducto, no exite la categoria ${categoria}`,
          status: 400,
        };
      }
    }

    //crear Producto
    const newProducto = await Producto.create(producto);

    //crear categoria_producto
    for (const categoria of categorias) {
      await Categoria_Producto.create({
        categoria_id: categoria,
        producto_id: newProducto.producto_id!,
      });
    }

    let isPrinciapl = true;
    for (const imagen of imagenes) {
      const tipo = isPrinciapl ? "principal" : "secundaria";

      await Imagen.create({
        imagen: imagen,
        producto_id: newProducto.producto_id!,
        tipo,
      });
      isPrinciapl = false;
    }

    for (let i = 0; i < especificaciones.length; i++) {
      const especificacion = especificaciones[i];
      const campo = campos[i];

      await Especificacion.create({
        especificacion,
        campo,
        producto_id: newProducto.producto_id!,
      });
    }

    return { msg: "producto creado", status: 200 };
  } catch (error) {
    return { msg: "error _createProducto", status: 400 };
  }
};

export const _importProdcutos = async () => {
  const { data, listSku } = await leerExel();
  const skuSet = new Set(listSku);
  const skuRepetidos = skuSet.size !== listSku.length;
  const errors: any[] = [];

  if (skuRepetidos) {
    return { msg: "sku repetidos", status: 400 };
  }
  // validaciones
  // data.forEach((rowData, i) => {
  let i = 0;
  for (const rowData of data) {
    i++;
    if (isNaN(rowData.precio)) {
      errors.push({
        msg: `error en la linea ${i + 1}, el precio`,
      });
    }

    if (isNaN(rowData.oferta)) {
      errors.push({
        msg: `error en la linea ${i + 1}, el oferta`,
      });
    }

    if (typeof rowData.categorias !== "object") {
      errors.push({
        msg: `error en la linea ${i + 1}, categorias`,
      });
    }

    rowData.categorias.forEach(async (categoria) => {
      const categoriaExitente = await Categoria.findOne({
        where: { categoria_id: categoria },
      });
      if (!categoriaExitente) {
        errors.push({
          msg: `Error _createProducto, no exite la categoria ${categoria}`,
          status: 400,
        });
      }
    });

    if (typeof rowData.especificaciones !== "object") {
      errors.push({
        msg: `error en la linea ${i + 1}, especificaciones`,
      });
    }

    if (typeof rowData.campos !== "object") {
      return {
        msg: `error en la linea ${i + 1}, las campos debe ser un array`,
        status: 400,
      };
    }

    if (typeof rowData.imagenes !== "object") {
      errors.push({
        msg: `error en la linea ${i + 1}, imagenes`,
      });
    }
  }

  if (errors.length > 0) {
    return { errors, status: 400 };
  }

  let index = 0;
  for (const rowData of data) {
    index++;
    if (await Producto.findOne({ where: { sku: rowData.sku } })) {
      return { msg: `Sku repetido linea ${index}`, status: 400 };
    }

    const producto: ProductoInterface = {
      sku: rowData.sku,
      marca: rowData.marca,
      nombre: rowData.nombre,
      precio: rowData.precio,
      oferta: rowData.oferta,
      descripcion: rowData.descripcion!,
      destacado: rowData.destacado!,
    };
    const newProducto = await Producto.create(producto);

    for (const categoria of rowData.categorias) {
      await Categoria_Producto.create({
        categoria_id: parseInt(categoria),
        producto_id: newProducto.producto_id!,
      });
    }

    let isPrinciapl = true;
    for (const imagenes of rowData.imagenes) {
      for (const imagen of imagenes) {
        const tipo = isPrinciapl ? "principal" : "secundaria";

        await Imagen.create({
          imagen: imagen,
          producto_id: newProducto.producto_id!,
          tipo,
        });
        isPrinciapl = false;
      }
    }

    let is = 0;
    for (const especificacion of rowData.especificaciones!) {
      await Especificacion.create({
        especificacion,
        campo: rowData.campos![is],
        producto_id: newProducto.producto_id!,
      });
      is++;
    }
  }
  return { msg: "productos importados", status: 200 };
};

export const _getProductos = async (
  categoria: number,
  inicio: number,
  cantidad: number
) => {
  try {
    const consulta = await sequelize.query(
      "Call getProductos(:categoria, :inicio, :cantidad)",
      { replacements: { categoria, inicio, cantidad } }
    );
    const results = consulta as ProductoBaseDatos[];

    const items: FetchProducto[] = results.map((results) => ({
      producto_id: results.producto_id!,
      sku: results.sku,
      marca: results.marca,
      nombre: results.nombre,
      precio: results.precio,
      oferta: results.oferta,
      categorias: results.categorias.split(","),
      imagenes: results.imagenes.split(","),
    }));

    return { items, status: 200 };
  } catch (error) {
    return { msg: "A ocurrido un error en _getProductos", status: 400 };
  }
};

export const _getProductosDestacados = async (destacado: string) => {
  try {
    const consulta = await sequelize.query(
      "Call getProductosDestacados(:destacado)",
      {
        replacements: { destacado },
      }
    );
    const results = consulta as ProductoBaseDatos[];

    const items: FetchProducto[] = results.map((results) => ({
      producto_id: results.producto_id!,
      sku: results.sku,
      marca: results.marca,
      nombre: results.nombre,
      precio: results.precio,
      oferta: results.oferta,
      categorias: results.categorias.split(","),
      imagenes: results.imagenes.split(","),
    }));
    return { items, status: 200 };
  } catch (error) {
    return { msg: "A ocurrido un error en _getProductos", status: 200 };
  }
};

export const _getProducto = async (nombre: string) => {
  try {
    const consulta: any = await sequelize.query("Call getProducto(:nombre)", {
      replacements: { nombre },
    });

    // const jsonEspecificacion =
    const item: any = {
      producto_id: consulta[0].producto_id,
      sku: consulta[0].sku,
      marca: consulta[0].marca,
      nombre: consulta[0].nombre,
      precio: consulta[0].precio,
      oferta: consulta[0].oferta,
      descripcion: consulta[0].descripcion,
      especificaciones: consulta[0].especificaciones.split(","),
      campos: consulta[0].campos.split(","),
      categorias: consulta[0].categorias.split(","),
      imagenes: consulta[0].imagenes.split(","),
    };

    if (!item) {
      return { item: "no existe", status: 200 };
    }

    return { item, status: 200 };
  } catch (error) {
    return { error, status: 400 };
  }
};

export const _countProducto = async (categoria: number) => {
  try {
    const countProductos = await Categoria_Producto.count({
      where: { categoria_id: categoria },
    });
    return { countProductos, status: 200 };
  } catch (error) {
    return { msg: "A ocurrido un error en _getProductos", status: 400 };
  }
};

export const _countSearchProducto = async (nombre: string) => {
  try {
    const countProductos = await Producto.count({
      where: {
        nombre: {
          [Op.like]: `%${nombre}%`,
        },
      },
    });
    return { countProductos, status: 200 };
  } catch (error) {
    return { msg: "A ocurrido un error en _getProductos", status: 400 };
  }
};

export const _searchProducto = async (
  nombre: string,
  inicio: number,
  cantidad: number
) => {
  try {
    const consulta = await sequelize.query(
      "Call searchProductos(:nombre, :inicio, :cantidad)",
      { replacements: { nombre, inicio, cantidad } }
    );
    const results = consulta as ProductoBaseDatos[];

    const items: FetchProducto[] = results.map((results) => ({
      producto_id: results.producto_id!,
      sku: results.sku,
      marca: results.marca,
      nombre: results.nombre,
      precio: results.precio,
      oferta: results.oferta,
      categorias: results.categorias.split(","),
      imagenes: results.imagenes.split(","),
    }));

    return { items, status: 200 };
  } catch (error) {
    return { error, status: 400 };
  }
};
