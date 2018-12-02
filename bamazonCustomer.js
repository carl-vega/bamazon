const mysql = require("mysql");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
  user: "admin",
  database: "bamazon",
  multipleStatements: true
});

inquirer
  .prompt([
    {
      type: "input",
      name: "productID",
      message: "Enter the product ID"
    },
    {
      type: "input",
      name: "quantity",
      message: "Enter the quantity",
      validate: function(input, answers) {
        const done = this.async();
        connection.query(
          `SELECT * FROM products where id = ${answers.productID}`,
          function(error, result, fields) {
            answers.product = result[0];
            if (result[0].stock_quantity >= input) {
              done(null, true);
            } else {
              done(null, `Only ${result[0].stock_quantity} available`);
            }
          }
        );
      }
    }
  ])
  .then(answers => {
    connection.query(
      `UPDATE products SET stock_quantity = ${answers.product.stock_quantity -
        answers.quantity} WHERE id = ${answers.product.id}`,
      function(error, results, fields) {
        if (error) throw error;
        const cost = answers.quantity * answers.product.price;
        console.log(
          `Your total cost is $${cost} for ${answers.quantity} of ${
            answers.product.product_name
          }`
        );
        connection.end();
      }
    );
  })
  .catch(error => {
    console.error(error);
    connection.end();
  });
