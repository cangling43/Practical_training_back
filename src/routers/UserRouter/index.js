import { Router } from "express";

const router = Router();


import GetUserInfoByToken from "./Retrive/GetUserInfoByToken.js";
router.post("/GetUserInfoByToken", GetUserInfoByToken);

import SearchOwners from "./Retrive/SearchOwners.js";
router.post("/SearchOwners", SearchOwners);

import Login from "./Retrive/Login.js";
router.post("/login", Login);

import Register from "./Retrive/Register.js";
router.post("/register", Register);

import GetUserList from "./Retrive/GetUserList.js";
router.post("/GetUserList", GetUserList);


export default router;