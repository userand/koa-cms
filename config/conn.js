const mysql  = require('mysql');
const config = require('./index')

let pool = mysql.createPool({
    host:config.host,
    database:config.database,
    user:config.username,
    password:config.password,
    port:config.prot
})

let query =  (sql,val) => {
    return  new Promise( (resolve,reject) => {
        pool.getConnection( (err,conn) => {
            if(err){
                reject(err)
            }else{
                conn.query( sql, val ,(err,rows) =>{
                    if(err){
                        reject(err)
                    }else{
                        resolve(rows)
                    }
                    conn.release()
                })
            }
        })
    })
}

module.exports = query