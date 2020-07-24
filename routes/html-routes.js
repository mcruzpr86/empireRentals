// Dependencies
// =============================================================
var path = require("path");
// Routes
// =============================================================
module.exports = function(app) {
  // Each of the below routes just handles the HTML page that the user gets sent to.
  // index route loads view.html
  app.get("/index", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/html/index.html"));
  });
  // cms route loads cms.html
  app.get("/vehicles", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/html/vehicles.html"));
  });
  // blog route loads blog.html
  app.get("/weapons", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/html/weapons.html"));
  });
  // authors route loads author-manager.html
  app.get("/cart", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/html/cart.html"));
  });
  app.get("/armor", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/html/armor.html"));
  });
  app.get("/index", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/index.html"));
  });
  // cms route loads cms.html
  app.get("/cms", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/vehicles.html"));
  });
  // blog route loads blog.html
  app.get("/blog", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/weapons.html"));
  });
  // authors route loads author-manager.html
  app.get("/authors", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/cart.html"));
  });
  app.get("/armor", function(req, res) {
    res.sendFile(path.join(__dirname, "../public/armor.html"));
  });
};