/**********************************************
** @Des: 产品列表
** @Author: shaojie qq:13019489
** @Date:   2020-04-10 15:50:36

***********************************************/
package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"winshop/models"
)

type ProductsController struct {
	beego.Controller
	pageSize int
}
type ShowController struct {
	beego.Controller
}

func (c *ProductsController) Get() {

	sortType, aerr := c.GetInt("sortType")

	if aerr != nil {
		sortType = 0
	}

	page, err := c.GetInt("page")
	if err != nil {
		page = 1
	}
	limit, err := c.GetInt("limit")
	if err != nil {
		limit = 4
	}
	cateId, cerr_ := c.GetInt("cateId")

	c.pageSize = limit
	//查询条件
	filters := make([]interface{}, 0)
	filters = append(filters, "is_delete", 0)
	if cerr_ == nil {
		filters = append(filters, "cat_id", cateId)
	}

	result, count := models.ProductsGetList(page, c.pageSize, sortType, filters...)
	list := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["id"] = v.Id
		row["goods_name"] = v.Goods_name
		row["goods_img"] = v.Goods_img
		row["Shop_price"] = v.Shop_price
		if k%2 == 0 {
			row["index"] = 1
		} else {
			row["index"] = 0
		}
		list[k] = row
	}

	out := make(map[string]interface{})
	out["count"] = count
	out["class_id"] = cateId
	out["page"] = page
	out["limit"] = limit
	out["list"] = list
	c.Data["data"] = out
	TopName := c.GetString("TopName")
	c.Data["TopName"] = TopName
	c.Data["ClassId"] = cateId
	c.Data["sortType"] = sortType
	c.TplName = "products/index.tpl"
	c.Render()
}

func (c *ShowController) Get() {

	id, cerr_ := c.GetInt("id")
	fmt.Print(id)
	if cerr_ == nil {
		print("ok")
	}
	//c.Render()
}
