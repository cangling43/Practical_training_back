import HouseService from "#src/services/HouseService.js";
import UserService from "#src/services/UserService.js";
import { isBlank } from "#src/utils/index.js";

export default async (req, res) => {
    const { house_id } = req.body;
    const house = await HouseService.GetHouseInfoById(house_id);
    if (isBlank(house)) {
        res.error(500, "找不到房源信息！");
        return;
    }
    house.owner = await UserService.GetUserInfoById(house.owner_id);
    res.success(house);
}

