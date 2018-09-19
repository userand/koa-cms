const router = require('koa-router')();
const adminController = require('../controller/admin/adminController')
const articleController = require('../controller/admin/articleController')

//后台首页
router.get('/admin',adminController.getAdmin)
router.post('/admin',adminController.postAdmin)

//文章列表
router.get('/admin/articleList',articleController.getArticle)

//添加文章
router.get('/admin/addArticle',articleController.getAddArticle)
router.post('/admin/postAddArticle',articleController.postAddArticle)



router.get('/admin/delArticle',articleController.delArticle)


module.exports = router