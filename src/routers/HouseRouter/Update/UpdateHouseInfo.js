import HouseService from "#src/services/HouseService.js";


export default async (req, res) => {
    const { house } = req.body;
    if (house == null || house == undefined) {
        res.error(400, "house为空，参数错误！");
        return;
    }
    //数据处理

    try {
        house.image_list = HouseService.ImageListToString(house.image_list);
        await HouseService.UpdateHouseInfoById(house);
        res.success(house);
    } catch (err) {
        console.error("数据库交互失败！", err);
        res.error(500, "更新失败！" + err);
    }
}