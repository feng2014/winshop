package routers

import (
	"github.com/astaxie/beego"
	"winshop/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("category", &controllers.CategoryController{})
	beego.Router("category/AjaxSonCateList", &controllers.AjaxSonCateListController{})
	beego.Router("products", &controllers.ProductsController{})
	beego.Router("products/show", &controllers.ShowController{})
	beego.ErrorController(&controllers.ErrorController{})
}
