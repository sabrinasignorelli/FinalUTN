var pool = require('./bd');
var md5 = require('md5');

async function getUserAndPassword(user, password) {
    try {
        var query = 'select * from usuarios where usuarios = ? and password = ? limit 1';
        return row[0];

    } catch (error) {
        console.log(error)
    }
}

module.exports = { getUserAndPassword }