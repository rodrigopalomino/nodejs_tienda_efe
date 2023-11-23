export interface Imagen {
  imagen_id?: number;
  imagen: string;
  producto_id: number;
  tipo: "principal" | "secundaria";
}
