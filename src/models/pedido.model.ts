import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Pedido as PedidoInterface } from "../interfaces/pedido";
import { Producto } from "./producto.model";
import { Usuario } from "./usuario.model";

export interface PedidoModel extends Model<PedidoInterface>, PedidoInterface {}

export const Pedido = sequelize.define<PedidoModel>(
  "pedidos",
  {
    pedido_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    codigo: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    usuario_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    fecha_pedido: {
      type: DataTypes.DATE,
      allowNull: false,
    },
    estado: {
      type: DataTypes.STRING,
      allowNull: false,
      defaultValue: "pendiente",
      validate: {
        isIn: [["pendiente", "procesando", "enviando", "entregado"]],
      },
    },
    departamento: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    provincia: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    distrito: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    direccion: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    nro_departamento: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    referencia: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    celular: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);
