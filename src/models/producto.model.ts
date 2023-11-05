import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Producto as ProductoInteface } from "../interfaces/producto";

export interface ProductoModel
  extends Model<ProductoInteface>,
    ProductoInteface {}

export const Producto = sequelize.define<ProductoModel>(
  "productos",
  {
    producto_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    sku: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
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
      type: DataTypes.DECIMAL(10, 2),
      allowNull: false,
    },
    oferta: {
      type: DataTypes.INTEGER,
      defaultValue: 0,
    },
    descripcion: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    destacado: {
      type: DataTypes.TINYINT,
      defaultValue: 0,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);
