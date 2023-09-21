import express from "express";
import cors from "cors";
import { router } from "../routes/index";

import { Categoria } from "./categoria.model";
import { Producto } from "./producto.model";
import { Especificacion } from "./especificacion.model";
import { General } from "./general.model";
import { Subcategoria } from "./subcategoria.model";
import { General_Categoria } from "./general_categoria.model";

class Server {
  app: express.Application;
  PORT: string;

  constructor() {
    this.app = express();
    this.PORT = process.env.PORT || "3001";

    this.listen();
    this.middlewares();
    this.routes();
    this.dbConnection();
  }

  listen() {
    this.app.listen(this.PORT, () => {
      console.log(`ejecutandose en el puerto ${this.PORT}`);
    });
  }

  middlewares() {
    this.app.use(express.json());
    this.app.use(cors());
  }

  routes() {
    this.app.use(router);
  }

  async dbConnection() {
    try {
      console.log("exito en la conexion");
      await General.sync();
      await Categoria.sync();
      await Subcategoria.sync();
      await Producto.sync();
      await Especificacion.sync();
      await General_Categoria.sync();
    } catch (error) {
      console.log(error);
    }
  }
}

export default Server;
