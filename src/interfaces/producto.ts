export interface Producto {
  producto_id?: number;
  sku: string;
  marca: string;
  nombre: string;
  precio: number;
  oferta: number;
  descripcion: string;
  destacado: number;
}

export interface ProductoBaseDatos {
  producto_id?: number;
  sku: string;
  marca: string;
  nombre: string;
  precio: number;
  oferta: number;
  descripcion?: string;
  destacado?: number;
  categorias: string;
  imagenes: string;
  especificaciones?: string;
  campos?: string;
}

export interface FetchProducto {
  producto_id?: number;
  sku: string;
  marca: string;
  nombre: string;
  precio: number;
  oferta: number;
  descripcion?: string;
  destacado?: number;
  categorias: string[];
  imagenes: string[];
  especificaciones?: string[];
  campos?: string[];
}
