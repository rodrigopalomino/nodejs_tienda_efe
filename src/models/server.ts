import express from "express";
import cors from "cors";
import { router } from "../routes/index";
import { Categoria } from "./categoria.model";
import { Producto } from "./producto.model";
import { Categoria_Producto } from "./categoria_producto.model";

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
      await Categoria.sync();
      await Producto.sync();
      await Categoria_Producto.sync();
    } catch (error) {
      console.log(error);
    }
  }
}

export default Server;
