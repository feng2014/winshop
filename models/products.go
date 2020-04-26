/**********************************************
** @Des: 产品模型
** @Author: shaojie QQ:13019489
** @Date:   2020/4/21 13:44

***********************************************/

package models

import (
	"github.com/astaxie/beego/orm"
)

type Products struct {
	Id         int
	Cat_id     uint8
	Goods_name string
	Is_delete  uint8
	Goods_img  string
	Shop_price float32
	Is_new     uint8
	Sales      uint8
	Comments   uint8
	Goods_desc string
}

func (a *Products) TableName() string {
	return TableName("goods")
}

func ProductsGetList(page, pageSize int, orderby int, filters ...interface{}) ([]*Products, int64) {
	offset := (page - 1) * pageSize
	list := make([]*Products, 0)
	query := orm.NewOrm().QueryTable(TableName("goods"))
	if len(filters) > 0 {
		l := len(filters)

		for k := 0; k < l; k += 2 {
			query = query.Filter(filters[k].(string), filters[k+1])
		}
	}
	total, _ := query.Count()

	switch orderby {
	case 0:
		query.OrderBy("-id").Limit(pageSize, offset).All(&list)
	case 1:
		query.OrderBy("-is_new").Limit(pageSize, offset).All(&list)
	case 2:
		query.OrderBy("-sales").Limit(pageSize, offset).All(&list)
	case 3:
		query.OrderBy("-comments").Limit(pageSize, offset).All(&list)
	case 4:
		query.OrderBy("-shop_price").Limit(pageSize, offset).All(&list)
	case 5:
		query.OrderBy("shop_price").Limit(pageSize, offset).All(&list)
	}

	return list, total
}

func Show(id int) (*Products, error) {
	r := new(Products)
	err := orm.NewOrm().QueryTable(TableName("goods")).Filter("id", id).One(r)
	if err != nil {
		return nil, err
	}
	return r, nil
}
