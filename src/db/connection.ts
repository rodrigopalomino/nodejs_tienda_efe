import { Sequelize } from "sequelize";

const sequelize = new Sequelize(
  process.env.DB_DATABASE || "efe",
  process.env.DB_USER || "root",
  process.env.DB_PASSWORD || "",
  {
    host: process.env.DB_HOST || "localhost",
    port: Number(process.env.DB_PORT),
    dialect: "mysql",
  }
);

export default sequelize;
