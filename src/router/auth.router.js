const express = require('express');
const router = express.Router();
const {login} = require('../controller/auth.controller');
router.post('/login',(req,res)=>{
  login(req,res);
})

module.exports = router;