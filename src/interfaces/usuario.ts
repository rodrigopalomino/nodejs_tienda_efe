export interface Usuario {
  usuario_id?: number;
  nombre: string;
  apellido: string;
  celular: string;
  email: string;
  documento_id: number;
  n_documento: string;
  password: string;
}

export interface UsuarioUpdate {
  nombre: string;
  apellido: string;
  celular: string;
  email?: string;
  documento_id: number;
  n_documento: string;
  password?: string;
}
