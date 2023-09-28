import { Categoria } from "../models/categoria.model";

export const _getCategorias = async (params: string | null) => {
  try {
    const items = await Categoria.findAll({ where: { parent_id: params } });
    return { items };
  } catch (error) {
    console.log(error);
    return { error: "error" };
  }
};
