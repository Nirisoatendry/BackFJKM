const express = require('express');
const router = express.Router();
const {createMember, createFamily} = require('../controller/ajout.controller');
router.post('/:status/:type',(req,res)=>{
    createMember(req,res);
});

router.post('/famille',(req,res)=>{
    createFamily(req,res);
});
module.exports = router;
