const auth = require('./src/router/auth.router');
const ajout = require('./src/router/ajout.router');
const liste = require('./src/router/liste.router');
const express = require('express');
const app = express();  
const bodyParser = require('body-parser');
const cors = require ('cors');
app.use(cors());
require('dotenv').config();
app.use(bodyParser.json()) //pour lire les données json
app.use(bodyParser.urlencoded({extended:false})) //pour lire les données
port = process.env.port
app.use('/auth',auth);
app.use('/ajout',ajout);
app.use('/liste',liste);
app.listen(port,()=>{
    console.log("server is running")
});