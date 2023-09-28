import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Categorias_Productos as Categorias_Productos_Interface } from "../interfaces/categoria_producto";
import { Categoria } from "./categoria.model";
import { Producto } from "./producto.model";

export interface Producto_Categoria_Model
  extends Model<Categorias_Productos_Interface>,
    Categorias_Productos_Interface {}

export const Categoria_Producto = sequelize.define<Producto_Categoria_Model>(
  "categorias_productos",
  {
    categoria_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
    producto_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Categoria_Producto.belongsTo(Categoria, {
  foreignKey: "categoria_id",
});

Categoria_Producto.belongsTo(Producto, {
  foreignKey: "producto_id",
});
