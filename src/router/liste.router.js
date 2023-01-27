const express = require('express');
const { familyList } = require('../controller/list.controller');
const router = express.Router();

router.get('/',(req,res)=>{
        familyList(req,res);
});
module.exports = router;
