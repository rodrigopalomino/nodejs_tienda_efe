import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Tienda as TiendaInteface } from "../interfaces/tienda";
import { Ubicacion } from "./ubicacion.model";

export interface TiendaModel extends Model<TiendaInteface>, TiendaInteface {}

export const Tienda = sequelize.define<TiendaModel>(
  "tiendas",
  {
    tienda_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    direccion: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    horario: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    ubicacion_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Tienda.belongsTo(Ubicacion, {
  foreignKey: "ubicacion_id",
});
