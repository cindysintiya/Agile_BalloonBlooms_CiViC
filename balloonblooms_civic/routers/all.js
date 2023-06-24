const express = require('express');
const user_controller = require('../controllers/user.js');
const Product = require('../models/product.js');

const router = express.Router();

router.get("/login", user_controller.login)
router.get("/logout", user_controller.logout)
router.get("/signup", user_controller.signup)
router.post("/signup", user_controller.create)
router.post("/login", user_controller.auth)

router.get('/products', (req, res) => {
    Product.findAll().then((products) => {
        let allProducts = []
        let delProducts = []
        let allCategories = []
        products.forEach(product => {
            if (!allCategories.includes(product.category)) {
                allCategories.push(product.category)
                allProducts.push({
                    category : product.category,
                    items    : []
                })
                delProducts.push({
                    category : product.category,
                    items    : []
                })
            }
            let productByCategory = {
                id      : product.id,
                code    : product.code,
                name    : product.name,
                price   : product.price,
                include : JSON.parse(product.include),
                likes   : JSON.parse(product.likes)
            }
            if (product.status == 1) {  // masukkan ke list product active
                allProducts[allCategories.indexOf(product.category)].items.push(productByCategory)
            }
            else {  // masukkan ke list product non active/ backup delete
                delProducts[allCategories.indexOf(product.category)].items.push(productByCategory)
            }   
        });
        res.render('Product', { products : allProducts, deleted : delProducts, user:req.session.user || "" });
    }).catch(err => {
        res.json({ status: 502, error: err });
    })
})

module.exports = router;