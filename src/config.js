//连接数据库的接口config

export default {
    db: {
        dialect: 'mysql',
        host: 'localhost',
        port: 3306,
        username: 'root',
        password: 'root',
        database: "houserent",
        query: {
            raw: true,
        }
    }
}