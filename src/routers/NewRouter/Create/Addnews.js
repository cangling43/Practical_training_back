import newsService from "#src/services/NewsAddService.js";

export default async (req, res) => {
    let { news } = req.body;
    //参数校验和转换
    console.log(news);

    news = await newsService.Addnews(news);
    res.success(news);
}