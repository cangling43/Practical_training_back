import { Sequelize } from "sequelize";
import config from "#src/config.js";


//创建一个连接器并导出
const sequelize = new Sequelize(config.db)

try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}

export default sequelize;