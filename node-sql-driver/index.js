// ln -s node_modules.nosync/ node_modules
const express = require("express");
const mysql = require("mysql");

const app = express();

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "example",
  database: "acme"
});

db.connect(err => {
  if (err) {
    console.log("Could not connect to MySQL Server.");
  }
  console.log("MySQL Connected.");
});

/*
app.get("/users", (req, res) => {
  const sql = "SELECT * FROM users";

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    console.log("Received GET request on /users");
    res.send(result);
  });
});
*/

app.get("/:table", (req, res) => {
  console.log(`Received GET request on / for param "${req.params.table}"`);

  let sql = `SELECT * FROM ${req.params.table}`;
  db.query(sql, (err, result) => {
    if (err) {
      res.send(err);
      console.log("Error (From Database) (Sent to user): ", err.message);
    } else {
      res.send(result);
      console.log("Success: Data Sent to User.");
    }
  });
});

app.listen(5000, () => {
  console.log("Server Started at Port 5000");
});
