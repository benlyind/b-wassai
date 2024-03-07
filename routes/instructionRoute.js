import userValidator from '../middlewares/userValidator.js'
import { Router } from "express";
import query from '../database/dbpromise.js'

const router = Router()

router.get('/', userValidator, async (req, res) => {
    try {
        const data = await query(`
            SELECT * FROM train_instructions
        `, [])
        res.json({ data, success: true })

    } catch (err) {
        console.log(err)
        res.json({ err, msg: "something went wrong" })
    }
})


export default router
