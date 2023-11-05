import express from "express";
import cors from "cors";
import { router } from "../routes/index";
import { Documento } from "./documento.model";
import { Categoria } from "./categoria.model";
import { Producto } from "./producto.model";
import { Imagen } from "./imagen.model";
import { Especificacion } from "./especificacion.model";
import { Categoria_Producto } from "./categoria_producto.model";
import { Usuario } from "./usuario.model";
import { Carrito } from "./carrito.model";
import { ListaDeseo } from "./listaDeseo.model";
import { Pedido } from "./pedido.model";
import { DetallePedido } from "./detallePedido.model";
import cookieParser from "cookie-parser";
import { Direccion } from "./direccion.model";
import { Ubicacion } from "./ubicacion.model";

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
    this.app.use(cookieParser());
  }

  routes() {
    this.app.use(router);
  }

  async dbConnection() {
    try {
      await Documento.sync();
      await Categoria.sync();
      await Producto.sync();
      await Imagen.sync();
      await Especificacion.sync();
      await Categoria_Producto.sync();
      await Usuario.sync();
      await Carrito.sync();
      await ListaDeseo.sync();
      await Pedido.sync();
      await DetallePedido.sync();
      await Direccion.sync();
      await Ubicacion.sync();
      // await Tienda.sync();
    } catch (error) {
      console.log(error);
    }
  }
}

export default Server;
