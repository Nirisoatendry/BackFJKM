const pool = require('../database/db')
const createMember = async (req, res) => {
  const { status, type } = req.params
  try {
    //console.log({nom,prenom,daty,lieu,profession,sexe,situation,adresse,email,faritra,batisa,mpandray,andraikitra,taranaka,sampana,rantsana,asa});
    if (type === 'zanaka') {
      console.log(req.body)
      const {
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
      } = req.body
      const [
        rows,
        fields,
      ] = await pool.execute(
        `insert into ${type} (id_dada,id_neny,nom_zanaka,prenom_zanaka,dat_zanakay,lieu_zanaka,profession_zanaka,sexe_zanaka,situation_zanaka,adresse_zanaka,email_zanaka,faritra_zanaka,batisa_zanaka,mpandray_zanaka,andraikitra_zanaka,taranaka_zanaka,sampana_zanaka,rantsana_zanaka,asa_zanaka) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) `,
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
      )
      return res.json(rows)
    } else {
      if (status == 'nodimandry' && type == 'dada') {
        const { nom, prenom, situation, sexe } = req.body
        const [
          rows,
          fields,
        ] = await pool.execute(
          `insert into dada (nom_dada,prenom_dada,sexe_dada,situation_dada) values (?,?,?,?) `,
          [nom, prenom, sexe, situation],
        )
        return res.json(rows)
      } else {
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
        console.log(req.body)
        const [
          rows,
          fields,
        ] = await pool.execute(
          `insert into ${type} (nom_${type},preno_m${type},daty_${type},lieu_${type},profession_${type},
            sexe_${type},situation_${type},adresse_${type},email_${type},faritra_${type},batisa_${type},
            mpandray_${type},andraikitra_${type},taranaka_${type},sampana_${type},rantsana_${type},
            asa_${type}) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) `,
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
        )
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
const createFamily = async (req, res) => {
  const { id_dada, id_neny } = req.body
  try {
    const [
      rows,
      fields,
    ] = await pool.execute(
      'insert into fianakaviana (id_dada,id_neny) values (?,?)',
      [id_dada, id_neny],
    )
    res.json(rows)
  } catch (error) {
    res.json({
      data: null,
      message: error,
    })
  }
}
module.exports = { createMember, createFamily }
