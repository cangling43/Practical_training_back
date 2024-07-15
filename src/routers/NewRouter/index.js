import { Router } from "express";

const router = Router();

import GetList from "./Retrive/GetList.js";
router.post("/getlist", GetList);

import Addnews from "./Create/Addnews.js";
router.post("/add", Addnews);

import GetDetail from './Retrive/GetDetail.js'
router.post("/getdetailById", GetDetail);



export default router;