const pool = require('../database/db')
const createMember = async (req, res) => {
  const { status,type } = req.params;
  try {
    //console.log({nom,prenom,daty,lieu,profession,sexe,situation,adresse,email,faritra,batisa,mpandray,andraikitra,taranaka,sampana,rantsana,asa});
    if(type==="zanaka"){
      console.log(req.body)
      const {id_dada,id_neny,nom,prenom,daty,lieu,profession,sexe,situation,adresse,email,faritra,batisa,mpandray,andraikitra,taranaka,sampana,rantsana,asa} = req.body;
      const [rows,fields] = await  pool.execute(
        `insert into ${type} (id_dada,id_neny,nom,prenom,daty,lieu,profession,sexe,situation,adresse,email,faritra,batisa,mpandray,andraikitra,taranaka,sampana,rantsana,asa) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) `,
        [
          id_dada,
          id_neny,
          nom,
          prenom,
          daty,
          lieu,
          profession,
          sexe,
          situation,
          adresse,
          email,
          faritra,
          batisa,
          mpandray,
          andraikitra,
          taranaka,
          sampana,
          rantsana,
          asa,
        ],
      );
      return res.json(rows)
    }else{
      if(status=="nodimandry" && type=="dada") {
        const {
          nom,
          prenom,
          situation,
          sexe
        } = req.body
        const [rows,fields] = await  pool.execute(
          `insert into dadaNodimandry (nom,prenom,sexe,situation) values (?,?,?,?) `,
          [
            nom,
            prenom,
            sexe,
            situation,
          ],
        );
        return res.json(rows)
      }else{
        const {
          nom,
          prenom,
          daty,
          lieu,
          profession,
          sexe,
          situation,
          adresse,
          email,
          faritra,
          batisa,
          mpandray,
          andraikitra,
          taranaka,
          sampana,
          rantsana,
          asa,
        } = req.body
        console.log(req.body);
        const [rows,fields] = await  pool.execute(
          `insert into ${type} (nom,prenom,daty,lieu,profession,sexe,situation,adresse,email,faritra,batisa,mpandray,andraikitra,taranaka,sampana,rantsana,asa) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) `,
          [
            nom,
            prenom,
            daty,
            lieu,
            profession,
            sexe,
            situation,
            adresse,
            email,
            faritra,
            batisa,
            mpandray,
            andraikitra,
            taranaka,
            sampana,
            rantsana,
            asa,
          ],
        );
        res.json(rows)
      }
    }
  } catch (error) {
    res.json({
      data: null,
      message: error,
    })
  }
}

module.exports = { createMember }
