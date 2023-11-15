import sequelize from "../db/connection";
import { Categoria as CategoriaInterface } from "../interfaces/categoria";
import { Categoria } from "../models/categoria.model";

export const _getCategorias = async () => {
  try {
    const items = await Categoria.findAll({ where: { parent_id: null } });
    return { items, status: 200 };
  } catch (error) {
    console.log(error);
    return { error: "a ocurrido un error en _getCategorias", status: 400 };
  }
};

export const _getSubCategorias = async (parent_id: string) => {
  try {
    const items = await sequelize.query("Call getCategorias(:parent_id)", {
      replacements: { parent_id },
    });
    return { items, status: 200 };
  } catch (error) {
    return { msg: error, status: 400 };
  }
};

export const _getCategoria = async (nombre: string) => {
  try {
    const item = await Categoria.findOne({ where: { nombre: nombre } });
    return { item, status: 200 };
  } catch (error) {
    return { msg: error, status: 400 };
  }
};
