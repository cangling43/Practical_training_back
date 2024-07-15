import HouseService from "#src/services/HouseAddService.js";

export default async (req, res) => {
    let {house} = req.body;
    //参数校验和转换
    console.log(house);

    //将image_list数组转换为字符串
    house.image_list = JSON.stringify(house.image_list);

    house = await HouseService.AddHouse(house);
    res.success(house);    
}