var db = require("../models")
module.exports = function (app) {
    app.get("/api/products/category/:id", function (req, res) {
        db.Product.findAll({
            // include: [db.Product],
            where: {
                categoryID: req.params.id
            }
        }).then(function (dbProduct) {
            res.json(dbProduct);
        })
    })
    // app.get("/api/products/:id", function (req, res) {
    //     db.Product.findOne({
    //         where: {
    //             id: req.params.id
    //         }
    //     }).then(function (dbProduct) {
    //         res.json(dbProduct)
    //     })
    // })
    app.post("/api/email", function (req, res) {
        db.Email.create(req.body).then(function (dbEmail) {
            res.json(dbEmail)
        })
    })
}