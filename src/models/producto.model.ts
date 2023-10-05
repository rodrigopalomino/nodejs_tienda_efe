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
    precio_normal: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    precio_rebajado: {
      type: DataTypes.INTEGER,
      defaultValue: 0,
    },
    stock: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    descripcion: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    especificaciones: {
      type: DataTypes.JSON,
      allowNull: true,
    },
    imagenes: {
      type: DataTypes.JSON,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);
