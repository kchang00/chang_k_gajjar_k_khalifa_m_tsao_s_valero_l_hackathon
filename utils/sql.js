const config = require('../config');
const mysql = require('mysql');

var connect  = mysql.createPool({
    // more than one person can use at a time
    connectionLimit : 10,
    queueLimit      : 100,
    // reference to config file to keep info hidden and secure
    waitForConnections : true,
    host            : config.host,
    port            : config.port,
    user            : config.uname,
    password        : config.upass,
    database        : config.db
  });

  module.exports = connect