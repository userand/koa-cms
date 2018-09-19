const query = require('../../query')
const md5 = require('md5')

module.exports = {
    getRegister : async ctx => {
        //get请求调制定的模版页面
        await ctx.render('home/register')
    },
    //用户注册
    postRegister : async ctx => {
        let { username, password } = ctx.request.body
        await query.findByName(username).then(async (result) => {
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
                await query.userRegister([username, md5(password)]).then((result) => {
                    ctx.body = {
                        code: 200,
                        message: '注册成功'
                    }
                })
            }
        })
    }
}