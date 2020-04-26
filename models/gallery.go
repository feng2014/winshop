/**********************************************
** @Des: 相册模型
** @Author: shaojie QQ:13019489
** @Date:   2020/4/26 14:36

***********************************************/

package models

import "github.com/astaxie/beego/orm"

type Gallery struct {
	Id       int
	Img_url  string
	Goods_id int
}

func (a *Gallery) TableName() string {
	return TableName("goods_gallery")
}

//获得相册列表
func GalleryGetList(GoodId int) []*Gallery {
	list := make([]*Gallery, 0)
	query := orm.NewOrm().QueryTable(TableName("goods_gallery"))
	query.OrderBy("Id").Filter("goods_id", GoodId).All(&list)
	return list
}
