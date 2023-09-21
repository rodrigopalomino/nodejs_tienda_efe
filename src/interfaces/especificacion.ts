export interface Especificacion {
  especificacion_id?: number;
  especificacion: string;
  contenido: string;

  //foreing key
  producto_id: number;
}
