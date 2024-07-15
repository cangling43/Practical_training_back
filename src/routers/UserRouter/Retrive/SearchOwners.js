import UserService from "#src/services/UserService.js";

export default async (req, res) => {
    const { name } = req.body;
    if (name == null || name == undefined) {
        res.error(400, 'name 不能为空！');
        return;
    }
    const user_list = (await UserService.SearchUserInfoListByName(name))
        .filter(item => item.identity == 2)
        .map(item => Object({
            user_id: item.user_id,
            name: item.name,
        }));
    res.success(user_list);
}