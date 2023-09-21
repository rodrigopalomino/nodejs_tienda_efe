import { Sequelize } from "sequelize";
import { Categoria } from "../models/categoria.model";
import { General_Categoria } from "../models/general_categoria.model";

export const _getCategorias = async (general_id: string) => {
  const items = await General_Categoria.findAll({
    where: { general_id: general_id },
    include: [{ model: Categoria, attributes: [] }],
    attributes: [
      [Sequelize.col("categorium.categoria_id"), "categoria_id"],
      [Sequelize.col("categorium.categoria"), "categoria"],
    ],

    raw: true,
  });

  return { items, status: 200 };
};
