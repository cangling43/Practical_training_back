import ProblemService from "#src/services/ProblemService.js";


export default async (req, res) => {
    const { type } = req.body;
    res.success(await ProblemService.GetProblemInfoByType(type));
}