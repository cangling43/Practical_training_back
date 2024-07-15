import house_db from "#src/models/house.js"


/**
 * @description Service to add a new house to the database
 * 
 */

const AddHouse = async (house) => {
    try{
        //返回house对象 传过去无id 传回有id
        return await house_db.create(house);
    }catch(err){
        console.error("AddHouse异常！", err);
        throw {
            message: "AddHouse异常！",
            error: err
        }
    }
}

export default {
    AddHouse
}