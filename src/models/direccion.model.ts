import { DataTypes, Model } from "sequelize";
import { Direccion as DireccionInterface } from "../interfaces/direcciones";
import sequelize from "../db/connection";
import { Usuario } from "./usuario.model";
import { Documento } from "./documento.model";

export interface DireccionModel
  extends Model<DireccionInterface>,
    DireccionInterface {}

export const Direccion = sequelize.define<DireccionModel>(
  "direcciones",
  {
    direccion_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    usuario_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    apellido: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    documento_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    nro_documento: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    celular: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    ubicacion_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    direccion: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    nro_departamento: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    referencia: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    tipo: {
      type: DataTypes.INTEGER,
      defaultValue: 3,
    },
  },
  { freezeTableName: true, timestamps: false }
);

Direccion.belongsTo(Usuario, {
  foreignKey: "usuario_id",
});

Direccion.belongsTo(Documento, {
  foreignKey: "documento_id",
});
