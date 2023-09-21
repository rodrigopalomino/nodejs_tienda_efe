import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Categoria as CategoriaInterface } from "../interfaces/categoria";

export interface CategoriaModel
  extends Model<CategoriaInterface>,
    CategoriaInterface {}

export const Categoria = sequelize.define<CategoriaModel>(
  "categoria",
  {
    categoria_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    categoria: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);
