import sequelize from "./sequelize.js";
import { DataTypes } from "sequelize";



export default sequelize.define('user', {
    user_id: {
        type: DataTypes.BIGINT,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    username: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    token: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    name: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    phone: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    email: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    identity: {
        type: DataTypes.STRING,
        allowNull: false,
        defaultValue: 0,
    },
    age: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    profession: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    address : {
        type: DataTypes.STRING,
        allowNull: true,
    }

}, {
    freezeTableName: true,
})