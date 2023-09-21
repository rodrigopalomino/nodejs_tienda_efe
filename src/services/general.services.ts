import { General } from "../models/general.model";

export const _getGeneral = async () => {
  const items = await General.findAll();
  return { items, status: 200 };
};
