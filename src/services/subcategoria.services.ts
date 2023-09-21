import { Sequelize } from "sequelize";
import { Categoria_Subcategoria } from "../models/categoria_subcategoria";
import { Subcategoria } from "../models/subcategoria.model";

export const _getSubcategoria = async (categoria_id: string) => {
  const items = await Categoria_Subcategoria.findAll({
    where: { categoria_id: categoria_id },
    include: [{ model: Subcategoria, attributes: [] }],
    attributes: [
      [Sequelize.col("subcategorium.subcategoria_id"), "subcategoria_id"],
      [Sequelize.col("subcategorium.subcategoria"), "subcategoria"],
    ],
    raw: true,
  });

  return { items: items, status: 200 };
};
