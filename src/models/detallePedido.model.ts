import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { DetallaPedido as DetallaPedidoInterface } from "../interfaces/detallePedido";
import { Producto } from "./producto.model";
import { Usuario } from "./usuario.model";
import { Pedido } from "./pedido.model";

export interface DetallaPedidoModel
  extends Model<DetallaPedidoInterface>,
    DetallaPedidoInterface {}

export const DetallePedido = sequelize.define<DetallaPedidoModel>(
  "detallePedidos",
  {
    detallePedido_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    pedido_id: {
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
DetallePedido.belongsTo(Pedido, {
  foreignKey: "pedido_id",
});
DetallePedido.belongsTo(Producto, {
  foreignKey: "producto_id",
});
