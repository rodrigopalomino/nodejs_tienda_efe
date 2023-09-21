import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Producto as ProductoInterface } from "../interfaces/producto";
import { Categoria } from "./categoria.model";

export interface ProductoModel
  extends Model<ProductoInterface>,
    ProductoInterface {}

export const Producto = sequelize.define<ProductoModel>(
  "producto",
  {
    producto_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    marca: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    precio: {
      type: DataTypes.DECIMAL(7, 2),
      allowNull: false,
    },
    descripcion: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    imagen: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  { freezeTableName: true }
);
