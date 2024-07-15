import sequelize from "./sequelize.js"
import { DataTypes } from "sequelize";

export default sequelize.define('problem', {
    pro_id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    pro_title: {
        type: DataTypes.STRING,
        allowNull: false
    },
    type: {
        type: DataTypes.STRING,
        allowNull: false
    },
    content: {
        type: DataTypes.STRING,
        allowNull: false},
},{
    freezeTableName: true,
})