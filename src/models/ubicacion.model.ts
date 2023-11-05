import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Ubicacion as UbicacionInteface } from "../interfaces/ubicacion";

export interface CategoriaModel
  extends Model<UbicacionInteface>,
    UbicacionInteface {}

export const Ubicacion = sequelize.define<CategoriaModel>(
  "ubicaciones",
  {
    ubicacion_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    ubicacion: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    parent_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Ubicacion.belongsTo(Ubicacion, {
  foreignKey: "parent_id",
});
