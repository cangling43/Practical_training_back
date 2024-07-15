import HouseService from "#src/services/HouseAddService.js";

export default async (req, res) => {
    const {name,owner_name,phone,money,deposit,status,method,region,type,desc} = req.body;
    res.success(await HouseService.GetHousePage(name,owner_name,phone,money,deposit,status,method,region,type,desc));
}