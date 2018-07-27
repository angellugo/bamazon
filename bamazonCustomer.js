const mysql = require ('mysql');
const Table = require ('easy-table');

const connection = mysql.createConnection ({
  host: 'localhost',

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: 'root',

  // Your password
  password: 'root',
  database: 'bamazon',
});

connection.connect (function (err) {
  if (err) throw err;
  showProducts ();
});

function showProducts () {
  const table = new Table ();

  const query = 'SELECT item_id, product_name, price FROM products';
  connection.query (query, function (err, res) {
    if (err) throw err;

    res.forEach (function (product) {
      table.cell ('Product Id', product.item_id);
      table.cell ('Product Name', product.product_name);
      table.cell ('Price, USD', product.price, Table.number (2));
      table.newRow ();
    });

    console.log (table.toString ());
    // console.table(['Number','Product Name', 'Price'], res);

    // console.log('Number\tProduct Name\tPrice');
    // res.forEach(element => {
    //     console.log (
    //         element.item_id + '\t' + element.product_name + '\t' + element.price
    //     );
    // });

    connection.end ();
  });
} // end function showProducts () {
