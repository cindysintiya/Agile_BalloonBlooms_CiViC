const {Sequelize, DataTypes} = require('sequelize');

let db_name = "bb_civic";
let username = "root";
let password = "";

const sequelize = new Sequelize(db_name, username, password, {
    host    : 'localhost', 
    dialect : 'mysql' 
});

module.exports = {sequelize, DataTypes}