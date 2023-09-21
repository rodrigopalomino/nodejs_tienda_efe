import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Subcategoria as SubcategoriaInterface } from "../interfaces/subcategoria";

export interface SubcategoriaModel
  extends Model<SubcategoriaInterface>,
    SubcategoriaInterface {}

export const Subcategoria = sequelize.define<SubcategoriaModel>(
  "subcategoria",
  {
    subcategoria_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    subcategoria: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);
