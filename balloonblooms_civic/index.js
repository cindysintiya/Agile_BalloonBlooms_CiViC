// import node module
const http = require('http');
const express = require('express');
const session = require('express-session');

// import models module
const { sequelize } = require('./models/model.js');
const User = require('./models/user.js');

// import routes module
const all_routes = require('./routers/all.js');

// import controllers module
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
}
catch (err) {
    console.log("Error !!!", err);
}

app.use('/', all_routes)

app.get('(/home)?', (req, res) => {
    res.render('Home', { user: req.session.user || "" });
})

app.get('*', (req, res) => {
    res.end("<h1>Under Construction. Please comeback later ^^</h1>")
})

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`)
});