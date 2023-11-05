import path from "path";
import excelJS from "exceljs";
import { FetchProducto, ProductoBaseDatos } from "../interfaces/producto";

export const leerExel = async () => {
  const worbook = new excelJS.Workbook();
  const filePath = path.join(__dirname, "../../public/uploads/productos.xlsx");

  try {
    await worbook.xlsx.readFile(filePath);
    const worksheet = worbook.getWorksheet(1);
    const data: FetchProducto[] = [];
    const listSku: string[] = [];

    worksheet!.eachRow((row: any, rowIndex) => {
      const imagenList: any[] = [];
      if (typeof row.values[11] === "object") {
        imagenList.push(row.values[11].text.split(","));
      }

      if (typeof row.values[11] === "string") {
        imagenList.push(row.values[11].split(","));
      }

      const rowData: FetchProducto = {
        sku: row.values[1],
        marca: row.values[2],
        nombre: row.values[3],
        precio: row.values[4],
        oferta: row.values[5],
        descripcion: row.values[6],
        destacado: row.values[7],
        categorias: row.values[8].split(","),
        especificaciones: row.values[9].split(","),
        campos: row.values[10].split(","),
        imagenes: imagenList,
      };
      listSku.push(row.values[1]);
      data.push(rowData);
    });

    return { data, listSku };
  } catch (error) {
    console.error("Error al leer el archivo Excel:", error);
    throw error;
  }
};
