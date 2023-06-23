// import node module
const http = require('http');
const express = require('express');

// import models module

// import routes module

// import controllers module

const app = express();
const server = http.createServer(app);

// Set static folder
app.use(express.static('public'));
app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.set('view engine', 'ejs');

app.get('*', (req, res) => {
    res.end("<h1>Under Construction. Please comeback later ^^</h1>")
})

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`)
});