import { Router } from "express";

const router = Router();

import GetList from "./Retrive/GetList.js";
router.post("/getlist", GetList);

import Addhouse from './Create/Addhouse.js';
router.post("/add", Addhouse);

import UpdateHouseInfo from "./Update/UpdateHouseInfo.js";
router.post("/update", UpdateHouseInfo);

import GetDetailById from './Retrive/GetDetailById.js'
router.post("/GetDetailById", GetDetailById);

export default router;