import NewService from "#src/services/NewService.js";


export default async (req, res) => {
    const { pageNo, pageSize } = req.body;
    res.success(await NewService.GetNewsPage(pageNo, pageSize));
}