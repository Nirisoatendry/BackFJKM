const pool = require('../database/db');


const familyList = async(req,res)=>{
    try {
        const [rows,fields] = await pool.execute("select * from zanaka inner join dada on  dada.id_dada=zanaka.id_dada inner join neny on zanaka.id_neny=neny.id_neny ");
        res.json(rows)

    } catch (error) {
        res.json(error)
    }    
}

module.exports = {familyList}