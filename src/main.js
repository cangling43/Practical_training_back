import express from 'express';
import cors from 'cors';


const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.listen(8080, () => {
    console.log('Server is running on port 8080');
})

//拦截器  有啥用
app.use("*", (req, res, next) => {
    res.success = (data) => {
        res.json({
            code: 200,
            data,
            message: "success"
        });
    }

    res.error = (code, data) => {
        res.json({
            code,
            data,
            message: "error"
        });
    }

    next();
})


//import the UserRouter
import UserRouter from './routers/UserRouter/index.js';
app.use("/user", UserRouter);

import HouseRouter from './routers/HouseRouter/index.js';
app.use("/house", HouseRouter);

import NewRouter from './routers/NewRouter/index.js';
app.use("/news", NewRouter);

import ProblemRouter from './routers/ProblemRouter/index.js';
app.use("/problem", ProblemRouter);


//全局异常处理
app.use((err, req, res, next) => {
    console.error(err);
    res.error(500, {
        message: "服务器内部错误！" + err.message,
        error: err.error
    });
});