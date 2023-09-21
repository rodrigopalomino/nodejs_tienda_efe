import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { General_Categoria as General_CategoriaInteface } from "../interfaces/general_categoria";
import { General } from "./general.model";
import { Categoria } from "./categoria.model";

export interface General_Categoria_Model
  extends Model<General_CategoriaInteface>,
    General_CategoriaInteface {}

export const General_Categoria = sequelize.define<General_Categoria_Model>(
  "general_categoria",
  {
    general_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    categoria_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
  },
  { freezeTableName: true, timestamps: false }
);

General_Categoria.belongsTo(General, {
  foreignKey: "general_id",
});

General_Categoria.belongsTo(Categoria, {
  foreignKey: "categoria_id",
});
