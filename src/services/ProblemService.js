import problem_db from "#src/models/problem.js"




const GetProblemInfoByType = async (type) => {
    return await problem_db.findAll({
        where: {
            type: type
        }
    });
}

const GetProblemInfoByById = async (news_id) => {
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
    GetProblemInfoByType,GetProblemInfoByById
}