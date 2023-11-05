import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Usuario as UsuarioInteface } from "../interfaces/usuario";
import { Documento } from "./documento.model";

export interface UsuarioModel extends Model<UsuarioInteface>, UsuarioInteface {}

export const Usuario = sequelize.define<UsuarioModel>(
  "usuarios",
  {
    usuario_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nombre: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    apellido: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    celular: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
    },
    password: {
      type: DataTypes.STRING,
      defaultValue: 0,
    },
    documento_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    n_documento: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);

Usuario.belongsTo(Documento, {
  foreignKey: "documento_id",
});
