const koa = require('koa')
const path = require('path')
const ejs = require('ejs')
const staticCache = require('koa-static-cache')
const bodyParser = require('koa-bodyparser')
const views = require('koa-views')
const session = require('koa-session')
const app = new koa()

app.keys = ['some']

const CONFIG = {
    key: 'uid', // cookie的键
    maxAge: 2*3600*1000, // 确定cookie的有效期，默认是一天
    httpOnly: true, // 不允许浏览器中的js代码来获取cookie，避免遭到一些恶意代码的攻击
    signed: true, // 会自动给cookie加上一个sha256的签名,从而防止cookie被篡改
    rolling: false, // 每次都更新session
    renew: true // 且有效期已经过了一半，需要更新session
  }

app.use(session(CONFIG, app)); 

//前台路由
const homeRoute = require( './routers/home').routes()
//后台路由
const adminRoute = require('./routers/admin').routes()

app.use(staticCache('./static'));

//模版文件
app.use( views(path.join(__dirname, './views'), {
    extension: 'ejs' // 文件后缀
}))

app.use(bodyParser())


app.use( homeRoute )
app.use( adminRoute )

app.listen(3000)