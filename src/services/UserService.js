import user_db from "#src/models/users.js";
import { isBlank } from "#src/utils/index.js";
import { Op } from "sequelize";
import { RandomString } from "#src/utils/index.js";


/**
 * 通过token获取用户信息
 * @param {*} token 
 * @returns 
 */
const GetUserInfoByToken = (token) => {
    if (token == null || token == undefined) return null;
    return user_db.findOne({ where: { token } });
}

/**
 * 通过username获取user对象
 * @param {*} username 
 * @returns 
 */
const GetUserInfoByUsername = (username) => {
    if (isBlank(username)) return null;
    return user_db.findOne({ where: { username } });
}

/**
 * 通过name获取用户信息列表
 * @param {*} name 
 */
const SearchUserInfoListByName = async (name) => {
    if (name == null || name == undefined) return [];
    return await user_db.findAll({
        where: {
            name: {
                [Op.like]: `%${name}%`,
            }
        }
    });
}

/**
 * 创建用户
 * @param {*} user 
 * @returns 
 */
const CreateUser = async (user) => {
    if (isBlank(user)) return null;
    try {
        return await user_db.create(user);
    } catch (err) {
        console.error(err);
        return null;
    }
}

const GenerateToken = () => {
    return RandomString(64);
}

const GetUserInfoById = async (user_id) => {
    if (user_id == null || user_id == undefined) return false;
    return await user_db.findByPk(user_id);
}

const GetUserPage = async (pageNo,pageSize) => {
    return user_db.findAndCountAll({
        offset: (pageNo - 1) * pageSize,
        limit: pageSize
    });
}

export default {
    GetUserInfoByToken,
    SearchUserInfoListByName, GetUserInfoByUsername,
    CreateUser, GenerateToken, GetUserInfoById,GetUserPage
}