const { createPool } = require("mysql2");
const dotenv = require('dotenv');
let pool;

dotenv.config();

module.exports ={
  createPool:() =>{

    pool = createPool({
      host: process.env.MY_SQL_HOST,
      user: process.env.MY_SQL_USERNAME,
      password: process.env.MY_SQL_PASSWORD,
      database: process.env.MY_SQL_DATABASE
    });

    console.log("Pool Created...")
  },
  getConnection: () =>{ return new Promise((resolve, reject) => {
    
    pool.getConnection((error, connection) => { 
      if (error) {
        reject(error);
      } else {
        resolve(connection);
      }
    });
  })},  
  beginTransaction: (connection) => { return new Promise((resolve, reject) => {
    connection.beginTransaction((error) => {
      if (error) {
        reject(error);
      } else {
        resolve();
      }
    });
  })},  
  commitTransaction: (connection) =>{ return  new Promise((resolve, reject) => {
    connection.commit((error) => {
      if (error) {
        reject(error);
      } else {
        resolve();
      }
    });
  })},
  rollbackTransaction: (connection) =>{ return  new Promise((resolve, reject) => {
    connection.rollback((error) => {
      if (error) {
        reject(error);
      } else {
        resolve();
      }
    });
  })},  
  release: (connection) =>{ return  new Promise((resolve) => {
    connection.release(resolve);
  })},
  ExecuteQuery: (connection,sql,values) => {
      return new Promise((resolved,rejected) => {
        connection.query(sql, values, (err, rows, fields) => {
            if (!err)
                return resolved(rows);
            else
                return rejected(err);
            })   
      })
  },
}