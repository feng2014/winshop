/**********************************************
** @Des: 产品属性
** @Author: shaojie qq:13019489
** @Date:   2020-04-10 15:50:36

***********************************************/
package models

import (
	"fmt"
	"github.com/astaxie/beego/orm"
)

type Goodstype struct {
	Id int
}

func (a *Category) TableName() string {
	return TableName("goodstype")
}

func get_goods_properties(id int) ([]*Goodstype, error) {
	list := make([]*Goodstype, 0)
	sql := "SELECT pp_api_detail.*,a.real_name as create_name,b.real_name as update_name,c.real_name as audit_name FROM pp_api_detail LEFT JOIN pp_uc_admin as a ON pp_api_detail.create_id=a.id LEFT JOIN pp_uc_admin as b ON pp_api_detail.update_id=b.id LEFT JOIN pp_uc_admin as c ON pp_api_detail.audit_id=c.id WHERE pp_api_detail.source_id=?"
	orm.NewOrm().Raw(sql, id).QueryRows(&list)
	fmt.Println(list)
	return list, nil
}
