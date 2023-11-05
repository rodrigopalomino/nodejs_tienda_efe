import { Ubicacion } from "../models/ubicacion.model";

export const _getUbicaciones = async () => {
  try {
    const items = await Ubicacion.findAll({ where: { parent_id: null } });
    return { items, status: 200 };
  } catch (error) {
    return { error: "a ocurrido un error en _getUbicaciones", status: 400 };
  }
};

export const _getSubUbicaciones = async (param: string) => {
  try {
    const items = await Ubicacion.findAll({ where: { parent_id: param } });
    return { items, status: 200 };
  } catch (error) {
    return { error: "a ocurrido un error en _getUbicaciones", status: 400 };
  }
};
