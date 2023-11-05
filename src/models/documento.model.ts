import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { Documento as DocumentoInteface } from "../interfaces/documento";

export interface DocumentoModel
  extends Model<DocumentoInteface>,
    DocumentoInteface {}

export const Documento = sequelize.define<DocumentoModel>(
  "documentos",
  {
    documento_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    documento: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    freezeTableName: true,
    timestamps: false,
  }
);
