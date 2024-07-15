import { Router } from "express";

const router = Router();

import GetProblemInfoByType from "./Retrive/GetProblemInfoByType.js";
router.post("/GetProblemInfoByType", GetProblemInfoByType);

import GetProblemInfoById from "./Retrive/GetProblemInfoById.js";
router.post("/GetProblemInfoById", GetProblemInfoById);




export default router;