import { Request, Response } from "express";
import User from "../models/User.ts";

class UserController {

    static getUsers(req: Request, res: Response) {
        res.json([{ id: 1, name: "João" }, { id: 2, name: "Maria" }]);
    }

    static createUser(req: Request, res: Response) {
    }

}

export default UserController;