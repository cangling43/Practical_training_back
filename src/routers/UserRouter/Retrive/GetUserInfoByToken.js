import UserService from "#src/services/UserService.js";
import { isBlank } from "#src/utils/index.js";


export default async (req, res) => {
    const token = req.get("Token");
    if (isBlank(token)) {
        res.error(400, "Token为空！");
        return;
    }

    const user = await UserService.GetUserInfoByToken(token);
    if (isBlank(user)) {
        res.error(500, "用户不存在！");
        return;
    }
    //删除敏感信息
    delete user.password;
    res.success(user);
}