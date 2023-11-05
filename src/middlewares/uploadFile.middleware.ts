import multer, { FileFilterCallback } from "multer";
import { Request, Response, NextFunction } from "express";
import path from "path";

const storage = multer.diskStorage({
  destination: path.join(__dirname, "../../public/uploads"),
  filename: (
    req: Request,
    file: Express.Multer.File,
    cb: (error: Error | null, destination: string) => void
  ) => {
    cb(
      null,
      "productos" +
        file.originalname.substring(file.originalname.lastIndexOf("."))
    );
  },
});

const fileFilter = (
  req: Request,
  file: Express.Multer.File,
  cb: FileFilterCallback
) => {
  const fileTypes = [
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
  ];

  if (fileTypes.includes(file.mimetype)) {
    return cb(null, true);
  }
  return cb(null, false);
};

const maxSize = 1000 * 1024 * 1024;

export const upload = (req: Request, res: Response, next: NextFunction) => {
  return multer({
    storage,
    limits: { fileSize: maxSize },
    fileFilter,
  }).single("productos")(req, res, (err) => {
    console.log("paso===========");

    if (err instanceof multer.MulterError) {
      console.log("1 => ", err);
      return res.status(400).json({
        msg: "maximo del archivo subido superado",
      });
    }

    if (err) {
      console.log("2 => ", err);
      return res.status(400).json(err);
    }

    if (!req.file) {
      console.log("3 => ", err);
      return res.status(400).json({ msg: "No se encontro archivo csv" });
    }

    next();
  });
};
