const express = require('express');
const router = express.Router();
const {createMember} = require('../controller/ajout.controller');
router.post('/:status/:type',(req,res)=>{
    createMember(req,res);
});

router.post('/famille',(req,res)=>{
    //ajouter famille
});
module.exports = router;
