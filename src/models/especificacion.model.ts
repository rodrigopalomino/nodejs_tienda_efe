import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Especificacion as EspecificacionInterface } from "../interfaces/especificacion";
import { Producto } from "./producto.model";

export interface EspecificacionModel
  extends Model<EspecificacionInterface>,
    EspecificacionInterface {}

export const Especificacion = sequelize.define<EspecificacionModel>(
  "especificacion",
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
    contenido: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    producto_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  { freezeTableName: true }
);

Producto.belongsTo(Producto, {
  foreignKey: "producto_id",
});
