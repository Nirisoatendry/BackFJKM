const pool = require('../database/db');
const login = async (req,res)=>{
<<<<<<< HEAD
    const {username, password } = req.body;
=======
    const { username , password } = req.body;
    console.log({ username , password })
>>>>>>> 71a0a403714bd49865cdf63cc3b9d7c2ed004213
    try {
        const [rows,fields] = await pool.execute('SELECT * FROM `admin` WHERE `username` = ? AND `password`=?', [username,password]);
        console.log(rows);
        if(rows.length>0){ // utilisateur trouvé
            res.json({
                data : rows[0].username,
                succes : true,
                message: 'successfuly'
            })
        }else{ 
            res.json({
                data : null,
                succes : false,
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