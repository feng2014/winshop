/**********************************************
** @Des: 产品列表
** @Author: shaojie qq:13019489
** @Date:   2020-04-10 15:50:36

***********************************************/
package controllers

import (
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
		row["shop_price"] = v.Shop_price

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

	id, _ := c.GetInt("id")
	p, _ := models.Show(id)
	row := make(map[string]interface{})
	if p != nil {
		row["id"] = p.Id
		row["goods_name"] = p.Goods_name
		row["shop_price"] = p.Shop_price
		row["goods_desc"] = p.Goods_desc
	}
	//读取相册开始
	result := models.GalleryGetList(id)
	classList := make([]map[string]interface{}, len(result))
	for k, v := range result {
		row := make(map[string]interface{})
		row["Id"] = v.Id
		row["Img_url"] = v.Img_url
		classList[k] = row
	}
	c.Data["photoList"] = classList
	//读取相册结束
	c.Data["data"] = row
	c.TplName = "products/show.tpl"
	c.Render()
}
