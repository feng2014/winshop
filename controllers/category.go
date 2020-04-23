package controllers

import (
	"github.com/astaxie/beego"
	"winshop/models"
)

type CategoryController struct {
	beego.Controller
}

type AjaxSonCateListController struct {
	beego.Controller
}

func (c *CategoryController) Get() {

	result := models.CategoryGetList(0) //获得父分类
	classList := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["Id"] = v.Id
		row["TypeName"] = v.CatName
		classList[k] = row
	}
	c.Data["classList"] = classList
	c.TplName = "category/index.tpl"
	c.Render()
}

func (c *AjaxSonCateListController) Get() {
	cateId, _ := c.GetInt("cateId", 0)
	result := models.CategoryGetList(cateId) //获得子分类
	classList := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["Id"] = v.Id
		row["TypeName"] = v.CatName
		row["Logo"] = v.Logo
		classList[k] = row
	}

	c.Data["json"] = classList
	c.ServeJSON()
}
