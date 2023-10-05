export interface Producto {
  producto_id?: number;
  sku: string;
  marca: string;
  nombre: string;
  precio_normal: number;
  precio_rebajado?: number;
  stock: number;
  descripcion: string;
  especificaciones: Record<string, any>;
  imagenes: string[];
}
