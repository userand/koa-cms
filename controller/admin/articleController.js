const query = require('../../query')
const uuidv1 = require('uuid/v1');
const md5 = require('md5')

module.exports = {
    //获取文章列表
    getArticle : async ctx => {
        let result;
        await query.findAllArticle().then(res => {
            let string = JSON.stringify(res)
            let data = JSON.parse(string)
            result = data
        })
        await ctx.render('admin/articleList',{
            artcileList: result
        })
    },
    //新增文章
    getAddArticle : async ctx => {
        await ctx.render('admin/addArticle')
    },
    postAddArticle : async ctx => {
        let { title,type,copyfrom, keywords, description, count, author,content} = ctx.request.body
        await query.addArticle([ title,type,copyfrom, keywords, description, count, author,content,1,new Date(),uuidv1()]).then((result) => {
            ctx.body = {
                code: 200,
                message: '新增成功'
            }
        })
    },
    //del
    delArticle : async ctx => {
        let ctx_query_id =ctx.request.query['uuid']
        await query.deleteArticle(ctx_query_id).then((result) => {
            ctx.body = {
                code: 200,
                message: '删除成功'
            }
        })
    }
}
