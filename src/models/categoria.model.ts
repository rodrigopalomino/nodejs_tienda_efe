import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Categoria as CategoriaInteface } from "../interfaces/categoria";

export interface CategoriaModel
  extends Model<CategoriaInteface>,
    CategoriaInteface {}

export const Categoria = sequelize.define<CategoriaModel>(
  "categorias",
  {
    categoria_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    parent_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Categoria.belongsTo(Categoria, {
  foreignKey: "parent_id",
});
