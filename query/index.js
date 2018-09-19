const exec = require('../config/conn')

//用户注册
module.exports = {
    userRegister : (val) => {
        let sql = "INSERT INTO users SET name=?,pass=?;"
        return exec(sql, val)
    },
    //添加文章
    addArticle : (val) => {
        let sql = "INSERT INTO article SET title=?,type_id=?,copyfrom=?,keywords=?,description=?,count=?,author=?,content=?,status=?,createtime=?,uuid=?"
        return exec(sql, val)
    },

    // 通过文章名称查找
    findByName : (name) => {
        let sql = `SELECT * FROM users WHERE name="${name}"`
        return exec(sql)
    },

    // 通过文章id查找
    findDataById :  (id) => {
        let sql = `SELECT * FROM article WHERE article_id="${id}";`
        return exec(sql)
    },

    // 查询所有文章
    findAllArticle :  () => {
        let sql = ` SELECT * FROM article;`
        return exec(sql)
    },

    // 删除文章
    deleteArticle : (uuid) => {
        let sql = `DELETE  FROM article WHERE uuid = ${uuid}`
        return exec(sql)
    }

}