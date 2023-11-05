import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { ListaDeseos as ListaDeseosInterface } from "../interfaces/listaDeseo";
import { Producto } from "./producto.model";
import { Usuario } from "./usuario.model";

export interface ListaDeseoModel
  extends Model<ListaDeseosInterface>,
    ListaDeseosInterface {}

export const ListaDeseo = sequelize.define<ListaDeseoModel>(
  "listaDeseos",
  {
    listaDeseo_id: {
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
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

ListaDeseo.belongsTo(Usuario, {
  foreignKey: "usuario_id",
});

ListaDeseo.belongsTo(Producto, {
  foreignKey: "productos_id",
});
