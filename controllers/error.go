package controllers

import (
	"github.com/astaxie/beego"
)

type ErrorController struct {
	beego.Controller
}

func (c *ErrorController) Error404() {
	c.Data["content"] = "哎呀！找不到页面了！"
	c.TplName = "error/404.html"
	c.Render()
}

func (c *ErrorController) Error501() {
	c.Data["content"] = "服务器出错了"
	c.TplName = "error/501.html"
	c.Render()
}

func (c *ErrorController) ErrorDb() {
	c.Data["content"] = "数据库错误"
	c.TplName = "error/dberror.html"
	c.Render()
}
