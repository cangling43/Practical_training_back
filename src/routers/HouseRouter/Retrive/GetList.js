import HouseService from "#src/services/HouseService.js";


export default async (req, res) => {
    const { pageNo, pageSize } = req.body;
    /**
     * {rows, count}
     */
    res.success(await HouseService.GetHousePage(pageNo, pageSize));
}

