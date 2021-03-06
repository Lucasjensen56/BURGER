// Dependencies
require("dotenv").config();


var express = require("express");
var bodyParser = require("body-parser");
var exphbs = require("express-handlebars");
var path = require("path")


// Create an instance of the express app.
var app = express();

app.use(express.static("public"));


app.use(bodyParser.urlencoded({ extended: true }));

// Set the port of our application
// process.env.PORT lets the port be set by Heroku
var PORT = process.env.PORT || 8080;

// Set Handlebars as the default templating engine.
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// parse application/json
app.use(bodyParser.json());

// Importanting Routes
var routes = require("./controllers/burgers_controller.js");

app.use(routes);



// Start our server so that it can begin listening to client requests.
app.listen(PORT, function() {
  // Log (server-side) when our server has started
  console.log("Server listening on: http://localhost:" + PORT);
});
