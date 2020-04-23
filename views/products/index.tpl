
<!DOCTYPE html> 
<html lang="zh-cn"> 
<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">

 <title>{{$.TopName}}</title> 
 
<link href="/static/css/css.css?v1.1" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="/static/layui/css/layui.css">
 <script src="/static/layui/layui.js?s=36"></script>

<style type="text/css">                                   
        .wrap{max-width: 640px; margin: 0 auto; overflow: hidden; min-height: 100%; background-color: #fff;background:url('') no-repeat top/100% auto; } 
        /*底部导航栏*/ 
        .nav{position: fixed; bottom: 0; max-width: 640px; width: 100%; height: 4.25rem; border-top: 1px solid #999; overflow: hidden; background-color: #fff; z-index: 999} 
        .nav a {position: relative; width: 20%; height: 100%; float: left; color: #999; text-align: center; } 
        .nav a span{position: absolute; left: 50%; top: 50%; transform: translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); width: 3rem; height: 4rem; background-image: url(https://mi5.vanclimg.com/Content/H5/img/navBgimgNew.png); background-repeat: no-repeat; background-size: 3rem 40rem; overflow: hidden; } 
        .nav .goods-num,.nav .goods-num-active{font-size: 0.8rem; position: absolute; top: 0.1rem; right: 1.6rem; padding: 0 0.2rem; height: 1rem; display: inline-block; line-height: 1.1rem; color: #fff; border-radius: 1.1rem; background: none; background-color: #b81c22; cursor: default; text-align: center; } 
        .nav .nav-home{background-position: 0rem 0rem; } 
        .nav .nav-home-active {background-position: 0rem -20rem; } 
        .nav .nav-search {background-position: 0rem -4rem; } 
        .nav .nav-search-active{background-position: 0rem -24rem; } 
        .nav .nav-Tshirt{background-position: 0rem -8rem; } 
        .nav .nav-Tshirt-active{background-position: 0rem -28rem; } 
        .nav .nav-shopcart{background-position: 0rem -12rem; } 
        .nav .nav-shopcart-active{background-position: 0rem -32rem; } 
        .nav .nav-me{background-position: 0rem -16rem; } 
        .nav .nav-me-active{background-position: 0rem -36rem; }
        /*顶部搜索和消息*/ 
        .index-search{max-width: 640px; width: 94%; text-align: center; overflow: hidden; z-index: 999; background: transparent; display: flex; margin: 0.5rem auto 0.5rem;}
        .idxSrh-linear-gradient{background: linear-gradient(rgba(209, 207, 207, 1), rgba(209, 207, 207,0.2));background: -webkit-linear-gradient(rgba(209, 207, 207, 1), rgba(209, 207, 207,0.2));background: -moz-linear-gradient(rgba(209, 207, 207, 1), rgba(209, 207, 207,0.2));}
        .search-head{width:3rem;background:url('') no-repeat center/100% auto;margin-right: 1rem;}
        .search-form{height: 2.2rem; line-height: 2.9rem; background-color: #fff; border: 1px solid #aaaaaa; border-radius: 3rem; overflow: hidden; flex: 1; margin-right: 1.5rem; position: relative; } 
        .index-search .search-icon{position: absolute; left:0; top:50%; transform: translateY(-50%); -webkit-transform: translateY(-50%); display: inline-block; margin-left: 0.8rem; width: 1.5rem; height: 1.5rem; border:0;background: url(http://i10.m.vancl.com/Content/H5/img/search2.png) no-repeat; background-size: contain; cursor: pointer; } 
        .index-search .search-input{font-size: inherit; position: absolute; left:3.3rem; top:50%; transform: translateY(-50%); -webkit-transform: translateY(-50%); width: 85%; height: 85%; display: inline-block; border: 0 none; vertical-align:middle;} 
        .index-message{ background: url() no-repeat center/100% auto; position:relative; width: 1.8rem; text-align: center; color: white; } 
        .index-message .hasNewMsg{position: absolute; top: 0.1rem; right: 0.1rem; border: 0.2rem solid; border-radius: 0.2rem; display: none;} 
        /*头部标题栏*/ 
        .topTitle{position: relative; top: 0; max-width: 640px; width: 100%; height: 4rem; overflow: hidden; background: #b81c22; text-align: center; line-height: 4rem;} 
        .topTitle .topBack{position: absolute; top: 50%; left: 2rem; transform: translateY(-50%) rotate(45deg); -webkit-transform: translateY(-50%) rotate(45deg); width: 1.4rem; height: 1.4rem; border-bottom: 2px solid #fff;border-left: 2px solid #fff;cursor: pointer; } 
        .topTitle .curTitle{display: inline-block; margin: 0 auto; font-size: 1.5rem; color: #fff;} 
        /*内容部分*/ 
        .index-content{position: relative; margin-bottom: 4.25rem; max-width: 640px; width: 94%; overflow: hidden; margin: 0 auto 0; height: 100%;background-color: #fafafa;} .others-content{position: relative; top: 0rem; margin-bottom: 4.25rem; max-width: 640px; width: 100%; height: 100%; background-color: #fff; line-height: 1.5;} 
        /* 弹出搜索框 */
        .search-popup{position: fixed; top: 7.9rem; max-width: 640px; width: 100%; height: 100%; display: none; color: #fff; background-color: rgba(0,0,0,0.8); z-index: 1000; } 
        .hotwords{width: 100%; padding-bottom: 0.5rem; border-bottom: 1px solid #fff; overflow-x: hidden; } 
        .hotwords p{margin: 0.5rem auto 0.5rem 1rem; color: #999; } 
        .hotwords #close-popup{float: right; margin-right: 0.3rem; }
        .swiper-slide {text-align: center; cursor: pointer; display: -webkit-box; display: -ms-flexbox; display: -webkit-flex; display: flex; -webkit-box-pack: center; -ms-flex-pack: center; -webkit-justify-content: center; justify-content: center; -webkit-box-align: center; -ms-flex-align: center; -webkit-align-items: center; align-items: center; } 
        .search-history span{margin: 0.5rem auto 0.5rem 1rem; display: block; color: #999; } 
        .search-history li{margin-top: 0.5rem; padding-left: 1.5rem; padding-bottom: 0.5rem; display: block; border-bottom: 1px solid #fff; cursor: pointer; } 
        .clear-srhHistory{width: 35%; height: 2rem; line-height: 2rem; margin: 1rem auto 0; border: 1px solid #fff; border-radius: 2px; text-align: center; cursor: pointer; }
       
    </style> <style>
.searchResultText
{line-height: 1.7em;
    background-color: #ededed;
    border: 1px solid #cbcdd0;
    color: #333333;
    font-family: "宋体";
    font-weight: bold;
    text-align: left;
    padding: 0em 0.5em 0em;
    margin: 0.5em 0.3em 0em;
    clear: both;
    display: inline-block;}
    
    .vancl-red{ color: #b81b22;}
</style> <script src="/static/js/zepto.min.js"></script> 

</head> <body> <div class="wrap"> <div class="topTitle"> <span id="topBack" class="topBack"></span> <span class="curTitle">{{$.TopName}}</span> </div> 

 <div class="others-content"> <ul class="list-tab clear"> 
 

<li class="new"><a class='active' href="/products?cateId={{$.ClassId}}&TopName={{$.TopName}}&sortType=1">新品</a></li> 
<li class="sale"><a class=''  href="/products?cateId={{$.ClassId}}&TopName={{$.TopName}}&sortType=2">销量</a></li> 
<li class="comm"><a class=''  href="/products?cateId={{$.ClassId}}&TopName={{$.TopName}}&sortType=3">评价</a></li> 
{{if eq $.sortType 4}}
<li class="price"><a class='' href="/products?cateId={{$.ClassId}}&TopName={{$.TopName}}&sortType=5">价格
{{else}}
<li class="price"><a class='' href="/products?cateId={{$.ClassId}}&TopName={{$.TopName}}&sortType=4">价格
{{end}}
&nbsp;<img class="price-bg" src="/static/img/icon_order.jpg" alt=""></a></li>
            
            
             </ul> 
              
              
             
               
               
             <dl class="unit clear"> 
           
  {{range $ind, $elem := .data.list}}
  
  
{{if eq $elem.index 1}}


             <dt class="left">
             
             <a class="pic lh0" href="/products/show?id={{$elem.id}}"> <img  src="{{$elem.goods_img}}" > </a><a class="text" href="/products/show?id={{$elem.id}}">{{$elem.goods_name}}</a> <h3 class="price">
                ￥{{$elem.Shop_price}}元</h3>

                </dt>
            {{else}}
                 <dt class="right"><a class="pic lh0" href="/products/show?id={{$elem.id}}"> <img  src="{{$elem.goods_img}}" > </a><a class="text" href="/products/show?id={{$elem.id}}">{{$elem.goods_name}}</a> <h3 class="price">
               ￥{{$elem.Shop_price}}元</h3> </dt> 
          
                   {{end}}
                    {{end}}    
                </dl>
      
            
              

                
              
              
              <div class="pager-wrap"> 
              
              <div class="layui-row" id="page"></div>
              </div>
                    
{{template "copyright.tpl" .}}
      <script>
          layui.use('laypage', function(){
              var laypage = layui.laypage;


              laypage.render({
                  elem: 'page'
                  ,count: {{$.data.count}}
                  ,limit:{{$.data.limit}}
                  ,curr: {{$.data.page}}
                  ,jump: function(obj, first){


                      console.log(obj.curr);
                      console.log(obj.limit);

                      if(!first){
                          window.location.href="products?cateId={{$.data.class_id}}&TopName={{$.TopName}}&sortType={{.sortType}}&page="+obj.curr
                      }
                  }
              });
          });
      </script>


          <script>

              layui.use('element', function(){
                  var element = layui.element;


              });
          </script>

                    

	
	
 </body> </html>
