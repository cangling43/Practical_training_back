import NewsService from "#src/services/NewService.js";
import UserService from "#src/services/UserService.js";
import { isBlank } from "#src/utils/index.js";

export default async (req, res) => {
    const { news_id } = req.body;
    const news = await NewsService.GetNewsInfoById(news_id);
    if (isBlank(news)) {
        res.error(500, "找不到新闻信息！");
        return;
    }

    res.success(news);
}

