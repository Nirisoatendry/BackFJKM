const mysql = require('mysql2');
const configuration = require('./config');
const pool = mysql.createPool(
    {
    ...configuration,
    waitForConnections :true,
    connectionLimit : 10
    }
)
module.exports = pool.promise();