import UserService from "#src/services/UserService.js";
import { isBlank } from "#src/utils/index.js";
import SHA256 from "crypto-js/sha256.js";


export default async (req, res) => {
    const { username, password } = req.body.form;
    if (isBlank(username) || isBlank(password)) {
        res.error(400, "用户名和密码不能为空！");
        return;
    }

    const user = await UserService.GetUserInfoByUsername(username);
    if (isBlank(user)) {
        res.error(400, "用户不存在！");
        return;
    }
    if (SHA256(password) != user.password) {
        //密码错误
        res.error(400, "密码错误！");
    }
    //登录成功
    //删除敏感信息
    delete user?.password;
    res.success(user);
}