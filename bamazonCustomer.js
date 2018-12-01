const mysql = require("mysql");
const inquirer = require("inquirer");
const fs = require("fs");

const connection = mysql.createConnection({
  user: "admin",
  multipleStatements: true
});

const bamazon = fs.readFileSync(__dirname + "/bamazon.sql").toString();

connection.query(bamazon, function(error, results, fields) {
  if (error) {
    console.error("error: " + error.stack);
    return;
  }

  console.log("connected as id " + connection.threadId);
  connection.end();
});
