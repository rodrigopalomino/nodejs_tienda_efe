import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Categoria_Subcategoria as Categoria_SubcategoriaInteface } from "../interfaces/categoria_subcategoria";
import { Categoria } from "./categoria.model";
import { Subcategoria } from "./subcategoria.model";

export interface Categoria_Subcategoria_Model
  extends Model<Categoria_SubcategoriaInteface>,
    Categoria_SubcategoriaInteface {}

export const Categoria_Subcategoria =
  sequelize.define<Categoria_Subcategoria_Model>(
    "categoria_subcategoria",
    {
      categoria_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
      },
      subcategoria_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
      },
    },
    { freezeTableName: true, timestamps: false }
  );

Categoria_Subcategoria.belongsTo(Categoria, {
  foreignKey: "categoria_id",
});

Categoria_Subcategoria.belongsTo(Subcategoria, {
  foreignKey: "subcategoria_id",
});
