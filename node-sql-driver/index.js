const express = require("express");
const mysql = require("mysql");

const app = express();

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "example",
  database: "acme"
});

db.connect();

app.get("/users", (req, res) => {
  const sql = "SELECT * FROM users";

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }

    res.send(result);
  });
});

app.get("/users1", (req, res) => {
  const sql = `
                SELECT first_name, last_name, email 
                FROM users 
                ORDER by last_name
                `;

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }

    res.send(result);
  });
});

app.listen(5000, () => {
  console.log("Server Started at Port 5000");
});
