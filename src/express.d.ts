import { DecodedToken } from "./interfaces/decodeToken";

declare global {
  namespace Express {
    interface Request {
      decodeToken?: DecodedToken;
    }
  }
}
