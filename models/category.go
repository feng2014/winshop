/**********************************************
** @Des: 产品分类
** @Author: shaojie qq:13019489
** @Date:   2020-04-10 15:50:36

***********************************************/
package models

import (
	"github.com/astaxie/beego/orm"
)

type Category struct {
	Id         int
	CatName    string
	ParentId   int
	SortOrder  int
	Grade      string
	IsShow     int
	filterAttr string
	Logo       string
}

func (a *Category) TableName() string {
	return TableName("category")
}

//获得分类
func CategoryGetList(cateId int) []*Category {
	list := make([]*Category, 0)
	query := orm.NewOrm().QueryTable(TableName("category"))
	query.OrderBy("SortOrder").Filter("parent_id", cateId).Filter("is_show", 1).All(&list)
	return list
}
