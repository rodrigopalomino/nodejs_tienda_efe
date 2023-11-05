import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Especificacion as EspecificacionInteface } from "../interfaces/especificacion";
import { Producto } from "./producto.model";

export interface EspecificacionModel
  extends Model<EspecificacionInteface>,
    EspecificacionInteface {}

export const Especificacion = sequelize.define<EspecificacionModel>(
  "especificaciones",
  {
    especificacion_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    especificacion: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    campo: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    producto_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Especificacion.belongsTo(Producto, {
  foreignKey: "producto_id",
});
