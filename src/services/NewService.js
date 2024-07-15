import news_db from "#src/models/new.js"



/**
 * 获取分页数据
 * @param {*} pageNo 页码 
 * @param {*} pageSize 分页大小
 */

const GetNewsPage = async (pageNo, pageSize) => {
    return await news_db.findAndCountAll({
        offset: (pageNo - 1) * pageSize,
        limit: pageSize
    });
}

const GetNewsInfoById = async (news_id) => {
    if (news_id == null || news_id == undefined) return null;
    try {
        const news = await news_db.findByPk(news_id);
        if (news == null || news == undefined) {
            console.log("GetNewsInfoById 数据库没找到news");
            return null;
        }
        return news;
    } catch (err) {
        console.error(err);
        throw "GetNewsInfoById 数据库交互失败!";
    }


}


export default {
    GetNewsPage, GetNewsInfoById
}