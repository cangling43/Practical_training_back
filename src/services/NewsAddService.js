import news_db from "#src/models/new.js"


/**
 * @description Service to add a new news to the database
 * 
 */

const Addnews = async (news) => {
    try {
        //返回news对象 传过去无id 传回有id
        return await news_db.create(news);
    } catch (err) {
        console.error("NewService.Addnews异常！", err);
        throw {
            message: "NewService.Addnews异常！",
            error: err
        }
    }
}

export default {
    Addnews
}