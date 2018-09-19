const model = require('../../query')
const md5 = require('md5')

module.exports = {
    //后台首页
    getAdmin : async ctx => {
        await ctx.render('admin/index')
    },
    postAdmin : async ctx => {

    },

    //添加用户
    getAddUser : async ctx => {
        await ctx.render('admin/adduser')
    },

    //添加用户
    postAddUser : async ctx => {
        let { username, password } = ctx.request.body
        await model.findByName(username).then(async (result) => {
            if (result.length) {
                ctx.body = {
                    code: 500,
                    message: '用户名已存在'
                }
            } else if (username == '' || password == '') {
                ctx.body = {
                    code: 500,
                    message: '用户名或密码不能为空'
                }
            } else {
                await model.userRegister([username, md5(password)]).then((result) => {
                    ctx.body = {
                        code: 200,
                        message: '注册成功'
                    }
                })
            }
        })
    }
}




