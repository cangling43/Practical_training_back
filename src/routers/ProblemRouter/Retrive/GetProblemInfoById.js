import problemService from "#src/services/ProblemService.js";
import { isBlank } from "#src/utils/index.js";

export default async (req, res) => {
    const { type } = req.body;
    const problem = await problemService.GetProblemInfoByById(house_id);
    
    res.success(problem);
}

