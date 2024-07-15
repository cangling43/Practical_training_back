import sequelize from "./sequelize.js"
import { DataTypes } from "sequelize";


export default sequelize.define("house",{
    house_id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
    },
    house_name:{
        type: DataTypes.STRING,
        allowNull: false,
    },
    address:{
        type: DataTypes.STRING,
        allowNull: false,
    },
    price:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    deposit:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    owner_id:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    description:{
        type: DataTypes.STRING,
        allowNull: true,
    },
    image_list:{
        type: DataTypes.STRING,
        allowNull: false,
    },
    area:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    elevator:{
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
    parking_space: {
        type: DataTypes.BOOLEAN,
        allowNull: false,
    },
    floor:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    num_bed: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    num_bath: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    status:{
          type: DataTypes.STRING,
        allowNull: false,
    },
    rent_method:{
          type: DataTypes.INTEGER,
        allowNull: false,
    },
},{
    freezeTableName: true,
    
})