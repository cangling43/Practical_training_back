import UserService from "#src/services/UserService.js";

export default async (req, res) => {
    const { pageNo, pageSize } = req.body;
    /**
     * {rows, count}
     */
    res.success(await UserService.GetUserPage(pageNo, pageSize));
}
