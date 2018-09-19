const query = require('../../query')
const md5 = require('md5')

module.exports = {
    getLogin : async ctx => {
        //get请求调制定的模版页面
        await ctx.render('home/login')
    },
    postLogin : async ctx => {
        //使用koa-bodyparser接收post参数
        ctx.body = ctx.request.body
        let { username, password } = ctx.request.body
        if (username == '' && password == '') {
            ctx.body = {
                code: 500,
                message: '用户名和密码不能为空'
            }
        } else {
            await query.findByName(username).then((result) => {
                if (result.length && result[0].name == username && result[0].pass == md5(password)) {
                    ctx.session = {
                        user :result[0].name,
                        id: result[0]['id']
                    }

                    ctx.body = {
                        code: 200,
                        message: '登录成功'
                    }
                }
                else {
                    ctx.body = {
                        code: 500,
                        message: '用户名或密码错误'
                    }
                }
            })
        }
    }
}