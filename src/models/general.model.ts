import { DataTypes, Model } from "sequelize";
import sequelize from "../db/connection";
import { General as GeneralInterface } from "../interfaces/general";

export interface GeneralModel
  extends Model<GeneralInterface>,
    GeneralInterface {}

export const General = sequelize.define<GeneralModel>(
  "general",
  {
    general_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    general: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  { freezeTableName: true, timestamps: false }
);
