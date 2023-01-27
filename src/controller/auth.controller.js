const pool = require('../database/db');
const login = async (req,res)=>{
    const { username , password } = req.body;
    try {
        const [rows,fields] = await pool.execute('SELECT * FROM `admin` WHERE `username` = ? AND `password`=?', [username,password]);
        if(rows.length>0){ // utilisateur trouvé
            res.json({
                data : rows[0].username,
                success : true,
                message: 'successfuly'
            })
        }else{ 
            res.json({
                data : null,
                success : false,
                message :'Non trouvé'
            })
        }
    } catch (error) {
        res.json(
            {
                data : null,
                success : false,
                message : error.message
            }
        );
    }
}
module.exports = {login};