const router = require('koa-router')();
const loginController = require('../controller/home/loginController')
const registerController = require('../controller/home/registerController')

//登录
router.get('/login',loginController.getLogin)
router.post('/login',loginController.postLogin)

//注册
router.get('/register',registerController.getRegister)
router.post('/register',registerController.postRegister)

module.exports =  router