

var mysql = require("mysql");
require('dotenv').config();

// 

var connection;
if (process.env.JAWSDB_URL) {
	// heroku deployment
	connection = mysql.createConnection(process.env.JAWSDB_URL);
} else {
	connection = mysql.createConnection({
		host: "localhost",
	  	user: "root",
	 	password: "Volund56",
	 	database: "burgers_db"

	})
}

// 

	 	// password: "process.env.SECRET_KEY",


// var connection = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   password: "Volund56",
//   database: "burgers_db"
// });

connection.connect(function(err) {
 if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }

  console.log("connected as id " + connection.threadId);
});

module.exports = connection;

