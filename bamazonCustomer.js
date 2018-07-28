const mysql = require ('mysql');
const Table = require ('easy-table');
const table = new Table ();
const inquirer = require ('inquirer');

console.log (/*begin with an empty line*/);

const connection = mysql.createConnection ({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'root',
  database: 'bamazon',
});

connection.connect (function (connectionError) {
  if (connectionError) throw connectionError;

  let query = 'SELECT * FROM products';
  connection.query (query, function (queryError, res) {
    if (queryError) throw queryError;

    res.forEach (function (product) {
      if (product.stock_quantity > 0) {
        table.cell ('Product ID', product.item_id);
        table.cell ('Product Name', product.product_name);
        table.cell ('Price, USD', product.price, Table.number (2));
        table.newRow ();
      }
    });

    console.log (table.toString ());

    inquirer
      .prompt ([
        {
          name: 'productID',
          message: 'Which item would you like to buy? (Enter the Product ID)',
        },
        {
          name: 'quantity',
          message: 'How many would you like to buy?',
        },
      ])
      .then (function (answers) {
        const productIsInStock =
          res[answers.productID - 1].stock_quantity - answers.quantity >= 0;

        if (productIsInStock) {
          //   console.log ('\nTransaction in progress...');
          query =
            'UPDATE products SET stock_quantity = ' +
            (res[answers.productID - 1].stock_quantity - answers.quantity) +
            ' WHERE item_id = ' +
            answers.productID;
          connection.query (query, function (queryError, res) {
            if (queryError) throw queryError;
            // console.log ('\nTransaction in completed');
          });
          const total =
            res[answers.productID - 1].price * answers.quantity;

          console.log ('\nYour total is: $' + total);
        } else {
          console.log ('\nInsufficient quantity!');
        }
        connection.end ();
      });
  });
});
