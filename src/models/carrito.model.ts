import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Carrito as CarritoInterface } from "../interfaces/carrito";
import { Producto } from "./producto.model";
import { Usuario } from "./usuario.model";

export interface CarritoModel
  extends Model<CarritoInterface>,
    CarritoInterface {}

export const Carrito = sequelize.define<CarritoModel>(
  "carritos",
  {
    carrito_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    usuario_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    producto_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    cantidad: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Carrito.belongsTo(Usuario, {
  foreignKey: "usuario_id",
});

Carrito.belongsTo(Producto, {
  foreignKey: "productos_id",
});
