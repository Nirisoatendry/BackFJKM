const auth = require('./src/router/auth.router');
const ajout = require('./src/router/ajout.router');
const liste = require('./src/router/liste.router');
const express = require('express');
const app = express();
const cors= require('cors')
require('dotenv').config();
app.use(cors());
app.use(express.json()) //pour lire les données json
app.use(express.urlencoded({extended:true})) 
port = process.env.port
app.use('/auth',auth);
app.use('/ajout',ajout);
app.use('/liste',liste);
app.listen(port,()=>{
    console.log("server is running")
});