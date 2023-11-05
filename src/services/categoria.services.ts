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

export const _getSubCategorias = async (params: string) => {
  try {
    const items = await Categoria.findAll({ where: { parent_id: params } });
    return { items, status: 200 };
  } catch (error) {
    console.log(error);
    return { error: "a ocurrido un error en _getSubCategorias", status: 400 };
  }
};
