import house_db from "#src/models/house.js"



/**
 * 获取分页数据
 * @param {*} pageNo 页码 
 * @param {*} pageSize 分页大小
 */

const GetHousePage = async (pageNo, pageSize) => {
    return house_db.findAndCountAll({
        offset: (pageNo - 1) * pageSize,
        limit: pageSize
    });
}



const GetHouseInfoById = async (house_id) => {
    if (house_id == null || house_id == undefined) return null;
    try {
        const house = await house_db.findByPk(house_id);
        if (house == null || house == undefined) {
            console.log("GetHouseInfoById 数据库没找到house");
            return null;
        }
        return house;
    } catch (err) {
        console.error(err);
        throw "GetHouseInfoById 数据库交互失败!";
    }


}



/**
 * 通过id修改house信息
 * @param {*} house 
 */
const UpdateHouseInfoById = async (house) => {
    if (house == undefined || house == null) return false;
    try {
        await house_db.update(house, {
            where: {
                house_id: house.house_id,
            }
        })
        return true;
    } catch (err) {
        console.error(err);
        throw "UpdateHouseInfoById 数据库交互失败！";
    }
}


const ImageListToString = (arr) => {
    return arr.join(',');
}

export default {
    GetHousePage, UpdateHouseInfoById, ImageListToString, GetHouseInfoById
}