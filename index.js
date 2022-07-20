// import mysql2 library
const mysql = require('mysql2');

// connect to our databse
const db = mysql.createConnection({
    host: '34.170.135.140',
    user: 'root',
    password: 'BuildingSoFLo',
    database: 'swecc-summer-2022',
});

// run query search
db.query('select * from books_mateo', (err, res) => {
if(err) {
    console.log(err)
    // output results to console
} console.log(res)
db.end();
})



