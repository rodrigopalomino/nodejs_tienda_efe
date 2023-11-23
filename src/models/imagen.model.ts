import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Imagen as ImagenInteface } from "../interfaces/imagen";
import { Producto } from "./producto.model";

export interface ImagenModel extends Model<ImagenInteface>, ImagenInteface {}

export const Imagen = sequelize.define<ImagenModel>(
  "imagenes",
  {
    imagen_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    imagen: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    producto_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    tipo: {
      type: DataTypes.ENUM("principal", "secundaria"),
      allowNull: false,
      defaultValue: "secundaria",
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Imagen.belongsTo(Producto, {
  foreignKey: "producto_id",
});
