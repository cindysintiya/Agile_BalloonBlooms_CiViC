// import node module
const http = require('http');
const express = require('express');
const session = require('express-session');

// import models module
const { sequelize } = require('./models/model.js');
const User = require('./models/user.js');
const Product = require('./models/product.js');
const Comment = require('./models/comment.js');

// import routes module
const all_routes = require('./routers/all.js');

const user_product_routes = require('./routers/user/product.js');
const user_wishlist_routes = require('./routers/user/wishlist.js');

const admin_user_routes = require('./routers/admin/user.js');
const admin_product_routes = require('./routers/admin/product.js');

// import controller module
const { forAdmin, forUser } = require('./controllers/auth.js');

const app = express();
const server = http.createServer(app);

// Set static folder
app.use(express.static('public'));
app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.set('view engine', 'ejs');

app.use(session({
    secret : 'ini adalah secret code ###',
    resave : false,
    saveUninitialized : true,
    cookie : {
        maxAge : 30*60*1000  // 30 mins
    }
}))

// biar bisa otomatis terbuat dulu tabelnya
try {
    sequelize.authenticate()
    User.sync()
    Product.sync()
    Comment.sync()
}
catch (err) {
    console.log("Error !!!", err);
}

app.use('/user/product', forUser, user_product_routes)
app.use('/user/wishlist', forUser, user_wishlist_routes)

app.use('/admin/user-list', forAdmin, admin_user_routes)
app.use('/admin/product', forAdmin, admin_product_routes)

app.use('/', all_routes)

app.get('(/home)?', (req, res) => {
    res.render('Home', { user: req.session.user || "" });
})

app.get('/forbidden', (req, res) => {
    res.render('Forbidden', { user: req.session.user || "" });
})

app.get('*', (req, res) => {
    res.render('PageNotFound', { user: req.session.user || "" })
})

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`)
});