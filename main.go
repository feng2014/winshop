package main

import (
	"github.com/astaxie/beego"
	"winshop/models"
	_ "winshop/routers"
)

func main() {

	models.Init()
	beego.Run()
}
