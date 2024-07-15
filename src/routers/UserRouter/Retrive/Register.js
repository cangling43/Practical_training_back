import UserService from "#src/services/UserService.js";
import { isBlank } from "#src/utils/index.js";
import SHA256 from "crypto-js/sha256.js";


export default async (req, res) => {
    const { form } = req.body;
    if (isBlank(form)) {
        res.error(400, "表单不能为空！");
        return;
    }
    //校验username
    if (form.username.length <= 3) {
        res.error(400, "用户名太短！");
        return;
    }
    const userByUsername = await UserService.GetUserInfoByUsername(form.username);
    if (!isBlank(userByUsername)) {
        res.error(400, "用户名已存在！");
        return;
    }
    //校验username完成


    form.password = SHA256(form.password).toString();
    //加上Token
    form.token = UserService.GenerateToken();
    const user = await UserService.CreateUser(form);
    if (isBlank(user)) {
        res.error(400, "注册失败，请检查表单！");
        return;
    }

    //删除敏感信息
    delete user?.password;
    res.success(user);
}