
<!DOCTYPE html> <html lang="zh-cn"> <head> <meta charset="utf-8"> <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"> <title>分类</title> <link href="/static/css/css.css?v1.1" rel="stylesheet" type="text/css" /> <style type="text/css">                                   
        .wrap{max-width: 640px; margin: 0 auto; overflow: hidden; min-height: 100%; background-color: #fff; } /*底部导航栏*/ .nav{position: fixed; bottom: 0; max-width: 640px; width: 100%; height: 4.25rem; border-top: 1px solid #999; overflow: hidden; background-color: #fff; z-index: 999} .nav a {position: relative; width: 20%; height: 100%; float: left; color: #999; text-align: center; } .nav a span{position: absolute; left: 50%; top: 50%; transform: translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); width: 3rem; height: 4rem; background-image: url(/static/img/navBgimgNew.png); background-repeat: no-repeat; background-size: 3rem 40rem; overflow: hidden; } .nav .goods-num,.nav .goods-num-active{font-size: 0.8rem; position: absolute; top: 0.1rem; right: 1.6rem; padding: 0 0.2rem; height: 1rem; display: inline-block; line-height: 1.1rem; color: #fff; border-radius: 1.1rem; background: none; background-color: #b81c22; cursor: default; text-align: center; } .nav .nav-home{background-position: 0rem 0rem; } .nav .nav-home-active {background-position: 0rem -20rem; } .nav .nav-search {background-position: 0rem -4rem; } .nav .nav-search-active{background-position: 0rem -24rem; } .nav .nav-Tshirt{background-position: 0rem -8rem; } .nav .nav-Tshirt-active{background-position: 0rem -28rem; } .nav .nav-shopcart{background-position: 0rem -12rem; } .nav .nav-shopcart-active{background-position: 0rem -32rem; } .nav .nav-me{background-position: 0rem -16rem; } .nav .nav-me-active{background-position: 0rem -36rem; } /*顶部搜索和消息*/ .index-search{position: fixed; top: 0; max-width: 640px; width: 100%; height: 4rem; overflow: hidden; background: #b81c22; z-index: 999; } .search-form{position: absolute; left:0.9rem; top:50%; transform: translateY(-50%); -webkit-transform: translateY(-50%); width: 85%; height: 2.2rem; line-height: 2.9rem; background-color: #fff; border-radius: 0.3rem; overflow: hidden; } .index-search .search-icon{position: absolute; left:0; top:50%; transform: translateY(-50%); -webkit-transform: translateY(-50%); display: inline-block; margin-left: 0.8rem; width: 1.5rem; height: 1.5rem; border:0;background: url(/static/img/search2.png) no-repeat; background-size: contain; cursor: pointer; } .index-search .search-input{font-size: inherit; position: absolute; left:3.3rem; top:50%; transform: translateY(-50%); -webkit-transform: translateY(-50%); width: 85%; height: 85%; display: inline-block; border: 0 none; vertical-align:middle;} .index-message{position: absolute; top: 50%; right: 0.9rem; transform: translateY(-50%); -webkit-transform: translateY(-50%); width: 1.8rem; height: 1.3rem; display: inline-block; background: url(/static/img/msg3.png) no-repeat; background-size: cover; -webkit-background-size: 1.8rem 1.3rem; cursor: pointer; } .index-message .hasNewMsg{position: absolute; top: -0.2rem; right: -0.5rem; border: 0.2rem solid #fff; border-radius: 0.2rem; } /*头部标题栏*/ .topTitle{position: relative; top: 0; max-width: 640px; width: 100%; height: 4rem; overflow: hidden; background: #b81c22; text-align: center; line-height: 4rem;} .topTitle .topBack{position: absolute; top: 50%; left: 2rem; transform: translateY(-50%) rotate(45deg); -webkit-transform: translateY(-50%) rotate(45deg); width: 1.4rem; height: 1.4rem; border-bottom: 2px solid #fff;border-left: 2px solid #fff;cursor: pointer; } .topTitle .curTitle{display: inline-block; margin: 0 auto; font-size: 1.5rem; color: #fff;s } /*内容部分*/ .index-content{position: relative; top: 4rem; margin-bottom: 4.25rem; max-width: 640px; width: 100%; height: 100%; background-color: #f2f2f2; } .others-content{position: relative; top: 0rem; margin-bottom: 4.25rem; max-width: 640px; width: 100%; height: 100%; background-color: #fff; line-height: 1.5; }
    </style> <style type="text/css">
        .product-category{
            background-color: #e5e5e5;
        }
        .product-title-panel{
            float: left;
            width: 25%;
            height: 100%;
        }
        .product-title-panel>ul{
            width: 100%;
            height: 100%;
            text-align: center;
        }
        .product-title-panel .product-title{
            display: block;
            height: 3rem;
            line-height: 3rem;
            border-bottom: 1px solid #fff;
            cursor: pointer;
        }
        .product-title-active{
            background-color: #fff;
            color:#CC0000;
        }
        .product-con{
            width: 75%;
            float: right;
            display: none;
            background-color: #fff;
        }
        .product-con>ul li{
            display: inline-block;
            width: 33%;
            text-align: center;
            overflow: hidden;
            cursor: pointer;
        }
        .product-con li span{
            display: block;
            color: #999;
        }
        .product-con li img{
            display: block;
            margin: 0.5rem auto;
            width: 75%;
        }
    </style> </head> <body> <div class="wrap"> <div class="topTitle"> <span id="topBack" class="topBack"></span> <span class="curTitle">分类</span> </div>
    
     <!-- 内容部分 --> 
    
    <div class="others-content"> 
    <div class="product-category clear" id="gorylist"> <div class="product-title-panel"> <ul> 
       {{range $ind, $elem := .classList}}
    <li class="product-title" goryId='{{$elem.Id}}'>{{$elem.TypeName}}</li> 
          {{end}}

     
     </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> <div class="product-con"> <ul> </ul> </div> </div> </div>
     
      <!-- 底部导航栏 -->
    
{{template "copyright.tpl" .}}



	
	
	
	
<script type="text/javascript">

Zepto(function($){

    // 设置product-con最小高度
    (function(){
        var HproTitPan = $('.wrap').height()-$('.topTitle').height()-$('.nav').height();
        $('.product-con').css('min-height',HproTitPan);
    })(window);

    //给每个title绑定点击事件
    $('.product-title').on('click',function(event) {
        event.preventDefault();
        var isActive = $(this).hasClass('product-title-active');
        if(isActive){
            return false;
        }
        $('.product-title').removeClass('product-title-active');
        $(this).addClass('product-title-active');
        var index = $(this).index();
        $('.product-con').hide();
        var parentCon = $('.product-con').eq(index);
        parentCon.show();
        var hasLi = parentCon.find('li').length==0? true:false;
        if(hasLi){
            var goryId = parseInt($(this).attr('goryId'));
			//alert(goryId);
            showMenu(parentCon,goryId);
        }
    });

    //显示推荐类
    (function(){
        $('.product-title-panel li').first().click();
    })(window);

    function showMenu(trigger, pId){
        var categoryId = '';
        var keyWord = '';
        ajaxJSON(trigger, pId);
    }

    function ajaxJSON(parentCon, cateId, keyWord, np){
        //获取子菜单
        var params = {
            cateId: cateId,
            np: np,
            cateref: ""
        };
        window.showModel = false;
        $.ajax({
            url: '/category/AjaxSonCateList',
            data: params,
            dataType: "JSON",
            success: function (d) {
                var dJson = $.parseJSON(d);
                dJson.forEach(function(index){
                    var textNode = $('<span></span>').text(index.TypeName);
                    var imgNode = $('<img />').attr('src',index.Logo);
                    var liNode = $('<li></li>').append(imgNode,textNode).on('click', function(event) {
                        event.preventDefault();
                        /* Act on the event */
                        window.location.href = "/products?cateId="+ index.Id+"&TopName="+index.TypeName;
                    });
                    $(parentCon).find('ul').append(liNode);
                });
                return true;                 
            }, error: function (a, b, c) {                
            }            
        });
    }
});
</script> </body> </html>
