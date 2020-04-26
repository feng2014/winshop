
<!DOCTYPE html> <html lang="zh-cn"> <head> <meta charset="utf-8"> <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no"> 
<title>{{$.data.goods_name}}</title> 

<link href="/static/css/css.css" rel="stylesheet" type="text/css" /> 


<style type="text/css">                                   
        .wrap{max-width: 640px; margin: 0 auto; overflow: hidden; min-height: 100%; background-color: #fff; } /*底部导航栏*/ .nav{position: fixed; bottom: 0; max-width: 640px; width: 100%; height: 3rem; border-top: 1px solid #999; overflow: hidden; background: #fff; z-index: 999} .nav a {position: relative; width: 50%; height: 100%; float: left; color: #999; text-align: center; } .nav a span{position: absolute; left: 50%; top: 50%; transform: translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); width: 3rem; height: 2.4rem; background-image: url(/static/img/navBgimgNew.png); background-repeat: no-repeat; background-size: 3rem 40rem; overflow: hidden; } .nav .goods-num,.nav .goods-num-active{font-size: 0.8rem; position: absolute; top: 0.1rem; right: 6.5rem; padding: 0 0.2rem; height: 1rem; display: inline-block; line-height: 1.1rem; color: #fff; border-radius: 1.1rem; background: none; background-color: #b81c22; cursor: default; text-align: center; }.nav .nav-shopcart{background-position: 0rem -12rem; } .nav .nav-shopcart-active{background-position: 0rem -32rem; } .nav .addToCart{width: 100%; height: 100%; line-height: 3rem; color: #fff; background: none; background-color: #b81c22; font-size: 1.2rem; }  /*头部标题栏*/ .topTitle{position: relative; top: 0; max-width: 640px; width: 100%; height: 4rem; overflow: hidden; background: #b81c22; text-align: center; line-height: 4rem;} .topTitle .topBack{position: absolute; top: 50%; left: 2rem; transform: translateY(-50%) rotate(45deg); -webkit-transform: translateY(-50%) rotate(45deg); width: 1.4rem; height: 1.4rem; border-bottom: 2px solid #fff;border-left: 2px solid #fff;cursor: pointer; } .topTitle .curTitle{display: inline-block; margin: 0 auto; font-size: 1.5rem; color: #fff;s } /*内容部分*/ .others-content{position: relative; top: 0rem; margin-bottom: 4.25rem; max-width: 640px; width: 100%; height: 100%; background-color: #fff; line-height: 1.5;}
         }
    </style>
    
     <style>
        .wrap, .login, .footer { background: #fff; }
        .login, .footer { background: #f5f5f5; }
        td { line-height: 0; }
        #prd-des-cont img { display: block; }
        .tableWrap { margin: 0 auto; width: 99%; height: auto; overflow: hidden; }
        .tableWrap table { position: relative; width: 98%; left: 0; word-break: keep-all; border-collapse: collapse; border: solid #ddd; border-width: 1px 0px 0px 1px; margin: 5px auto; font-family: -webkit-body; white-space: nowrap; }
        .tableWrap table td { text-align: center; color: #655C5C; border: solid #ddd; border-width: 0px 1px 1px 0px; line-height: 2em; height: 2em; font-size: 1rem; }
        .tagFlag { background-color: #fff; height: 1px; }
        .box { position: fixed; top: 0; left: 0; z-index: 999; width: 100%; background-color: #fff; border-bottom: 1px solid #666; }
        .prd-des { margin: 0; padding: 0; }
        .prd-ul { margin: 1.5em auto; }
        .prd-ul li { width: 33%; }
        .prd-des ul { display: block; }
        .prd-des li { padding: 0; }
        .black { color: #4c4c4c; }
        #ajaxFlag { width: 100%; height: 1em; }
        #ajaxContent { width: 100%; }
        .tagmao { padding-top: 4.7em; }
        .tagmaoHigh { padding-top: 9.4em; }
        .preSaleFlag { background-color: #A10000; color: #fff; border-radius: 0.15em; display: inline; padding: 0.1em 0.1em; margin-right: 0.5em; }
        .preMoney { margin-left: 0.8em; color: #b81b22; }
        .preSaleWarning { margin: 1.5em 2em 0 2em; color: #b81b22; line-height: 1.5em; }
        
        /*评论图片*/
        .commentPics { margin-top: 0.5rem; overflow: hidden; }
        .comment .commentPics li { width: 5.3rem; height: 5.3rem; float: left; margin: 0 .48em .5em 0; background-color: #fff; display: -webkit-box; -webkit-box-align: center; -webkit-box-pack: center; display: -ms-flexbox; -ms-flex-pack: center; -ms-flex-align: center; }
        .comment .commentPics img { max-width: 100%; max-height: 100%; }
        .comment .review-uInfo { margin-bottom: .5rem; }
        .comment .comment-reply { padding: 5px; background-color: #f2f2f2; }
        .comment .vancl-reply { color: #b81c22; }
        

    </style> 
    
    <link href="/static/css/swiper.min.css" rel="Stylesheet" /> 
	
	<style>
        .swiper-slide { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; padding: 0em; }
        .no-order { height: 30em; padding: 0px; overflow: hidden; margin-top: 0.1em; background-color: #fff; }
        .no-order span { font-size: 1.4em; margin-top: 8em; display: block; text-align: center; color: #a7a7a7; }
        

        .overflowHide { position: fixed; top: 0; left: 0; width: 100%; }
    </style> </head> <body> <div class="wrap"> <div class="topTitle"> <span id="topBack" class="topBack"></span> <span class="curTitle">商品详情</span> </div> <!-- 内容部分 --> 
    
    <div class="others-content"> <div class="slider"> <div class="swiper-container" id="swiper-container"> <div class="swiper-wrapper"> 
        {{range $ind, $elem := .photoList}}
    
    <div class="swiper-slide">
  
     <img class="lazyLoad" data-src="{{$elem.Img_url}}" src="{{$elem.Img_url}}"> 
     
     </div>
     {{end}}   
      

      
      </div> <div class="swiper-pagination"> </div> </div> </div> <div class="prd-tit clear" id="prd-tit"> <span class="name">{{$.data.goods_name}}</span> <div> <span class="price">{{$.data.shop_price}}元</span> </div> 
      
  
      

                                
                                
                                <div class="prd-size clear" id="prd-size"> <span class="chkbox"></span> <span class="size-info" id="size-info">选择&nbsp;颜色/尺码</span><span class="sword-r"></span> <input id="chooseSize" type="hidden" /> </div> <div class="size-box hide" id="size-box"> <h3 class="tit">
            选择颜色</h3> <p class="color clear" id="color"> <span  onclick="getProductInfo('6388594',this);" class="size-color">白色</span> <span  onclick="getProductInfo('6388595',this);" class="size-color">黑色</span> <span  onclick="getProductInfo('6388596',this);" class="size-color">白色</span> <span  onclick="getProductInfo('6388597',this);" class="size-color">黑色</span> <span  onclick="getProductInfo('6388598',this);" class="size-color">白色</span> <span  onclick="getProductInfo('6388599',this);" class="size-color">黑色</span> <span  onclick="getProductInfo('6388600',this);" class="size-color">白色</span> <span  onclick="getProductInfo('6388601',this);" class="size-color">黑色</span> <span  onclick="getProductInfo('6388602',this);" class="size-color">白色</span> <span  onclick="getProductInfo('6388603',this);" class="size-color">黑色</span> <span  onclick="getProductInfo('6388723',this);" class="size-color active">白色</span> <span class="size-color disable">黑色</span> <input id="chooseColor" type="hidden" value="白色" /> </p> <h3 class="tit">
            尺码选择</h3> <input type="hidden" value="" id="sku" /> <p class="size clear" id="size"> <span onclick="chooseSize('15829650',this);" class="size-color">S</span> <span onclick="chooseSize('15829651',this);" class="size-color">M</span> <span onclick="chooseSize('15829652',this);" class="size-color">L</span> <span onclick="chooseSize('15829653',this);" class="size-color">XL</span> <span onclick="chooseSize('15829654',this);" class="size-color">XXL</span> </p> <h3 class="tit">
            购买数量</h3> <p class="changecount clear"> <span class="minus" onclick="changeNum(1)"></span> <span id="num" class="num">1</span><span onclick="changeNum(2)" class="plus"></span> </p> </div> <div class="bb mhr"> </div> <div class="tagFlag" id="tagFlag"> </div> <div class="prd-des" id="styleTag"> <ul class="clear prd-ul"> <li><a href="#tagmao0" class="active" onclick="changeActive(this);">商品详情 </a></li> <li onclick="getComments(this)">评论</li> <li onclick="getAsk(this)">咨询</li> </ul> </div> <div class="bb666"> </div> 
            
            
          
            
            <div id="prd-des-cont" class="prd-des-cont clear"> <div id="autoChangeContent"> <div id="tagmao0">{{$.data.goods_desc|str2html}} </div> </div> 
            
            
            
            
            
            <div id="ajaxFlag"> </div> <div id="ajaxContent"> </div> </div> <div id="over-lay" class="over-lay hide" style="position: fixed; top: 50%; left: 50%; -webkit-transform: translate(-50%,-50%); -ms-transform: translate(-50%,-50%); -o-transform: translate(-50%,-50%); transform: translate(-50%,-50%); z-index: 999; background: rgba(0,0,0,0.5); padding: 1em 2em; text-align: center; border-radius: 2px; width: 50%;"> <p id="tips-txt" class="tips-txt" style="color: #fff; text-align: center; font-size: 1.5em;"> </p> </div> <!-- 全屏显示评论图片 --> <div class="showFScreenImg" id="showFScreenImg"> <img src="" alt="" /> </div> <div id="full-overlay" class="full-overlay" style="" onclick="closeFullOverlay();"> </div> <div id="getCoupons" class="getCoupons" style="display: none;"> <style type="text/css">
    .toast-get-coupons { position: relative; z-index: 1003; padding: 0.5rem 1rem; margin-bottom: 1.25rem; background-color: white; color: White; text-align: left; }
    .toast-get-coupons .header { text-align: right; color: #333; background-color: #f7f7f7; line-height: 2rem; font-size: 1.5rem; }
    .coupons-item { position: relative; height: 8.5rem; background: linear-gradient(45deg, #F99C7C, #FD8792); z-index: 9; padding: 0; margin: 1.5rem 0.8rem 0; display: flex; overflow: inherit; border-radius: 0.5rem 0 0rem 0.5rem; }
    .coupons-item:after { content: ''; position: absolute; top: 0; right: -0.8rem; width: 1.2rem; background-color: #FD8792; background: radial-gradient(rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, 0) 0.8rem, #FD8792 0.9rem); background-size: 2.4rem 2.22435rem; height: 100%; }
    .coupons-item * { padding: 0; margin: 0; list-style: none; font-family: "Microsoft YaHei" , 'Source Code Pro' , Menlo, Consolas, Monaco, monospace; }
    .coupons-item-canReceive { background: linear-gradient(45deg, #F5541D, #FC3143); }
    .coupons-item-canReceive:after { background-color: #FC3143; background: radial-gradient(rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, 0) 0.8rem, #FC3143 0.9rem); background-size: 2.4rem 2.12rem; }
    
    .coupons-item-received { }
    .coupons-item-outofstock { }
    .coupons-item-outofstock:after { background-color: #F99C7C; background: radial-gradient(rgba(0, 0, 0, 0) 0, rgba(0, 0, 0, 0) 0.8rem, #F99C7C 0.9rem); background-size: 2.4rem 2.12rem; }
    .coupons-item .coupons-info { position: relative; padding: 0.28rem 1.2rem; padding-right: 0px; width: 60%; flex: 0 0 auto; text-align: left; background: radial-gradient(circle at top right, white 0.8rem, transparent 0) top right, radial-gradient(circle at bottom right, white 0.8rem, transparent 0) bottom right; background-size: 100% 100%; background-repeat: no-repeat; }
    .coupons-item .coupons-info:after { content: ''; border-width: medium; position: absolute; top: 20%; bottom: 20%; right: -0.16rem; z-index: -1; border: 0.16rem dashed white; }
    .coupons-info .coupons-info-detail { display: flex; height: 5.8rem; }
    .coupons-info-detail .coupons-price sup { font-size: 2rem; }
    .coupons-item-canReceive .coupons-price sup { color: #FFBA90; }
    .coupons-item-canReceive .coupons-price span { color: #FFBA90; }
    .coupons-info-detail .coupons-price span { font-size: 5.0rem; line-height: 6.5rem;font-weight:bold; }
    .coupons-item-canReceive .coupons-info-detail .coupons-price span { background-image: -webkit-linear-gradient(bottom,#FFBA90,white); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
    .coupons-info-detail .coupons-instructions { font-size: 1.32rem; flex: 1; text-align: center; display: flex; align-items: center; justify-content: flex-end; flex-direction: column; }
    .coupons-info .coupons-validate-time { font-size: 1.2rem; }
    /*圆角*/
    .coupons-item .coupons-status { display: inline-block; display: flex; align-items: center; padding: 1.6rem 0; flex: 1; vertical-align: text-bottom; color: rgb(255,255,255); text-align: center; line-height: initial; background: radial-gradient(circle at top left, white 0.8rem, transparent 0) top left, radial-gradient(circle at bottom left, white 0.8rem, transparent 0) bottom left; background-size: 100% 100%; background-repeat: no-repeat; }
    .coupons-operation-btn { font-size: 1.7rem; padding: 0.4rem 1rem; color: #FC2E3E; margin: 0 auto 0; border-radius: 2rem; }
    .canReceive-operation-btn { background: linear-gradient(0deg, #FFC19C, white); }
    .received-operation-btn { background-color: #FFE7E9; }
    .outofstock-coupons { background-color: #FFE7E9; }
</style> <div class="toast-get-coupons"> <div class="header" onclick="closeFullOverlay();">
            X</div> <ul class=""> <li class="coupons-item    coupons-item-canReceive"> <div class="coupons-info"> <div class="coupons-info-detail"> <div class="coupons-price coupons-price-active"> <sup>&yen;</sup><span>30</span></div> <div class="coupons-instructions"> <p>
满300元可用                                </p> <p>满300减30
                                </p> </div> </div> <div class="coupons-validate-time">2020.04.24-2020.04.26</div> </div> <div class="coupons-status"> <input type="hidden" name="" value="1SCM20200120" /> <p class="coupons-operation-btn canReceive-operation-btn" onclick="receiveCoupons('1SCM20200120')">
                                立即领取
                            </p> </div> </li> <li class="coupons-item    coupons-item-canReceive"> <div class="coupons-info"> <div class="coupons-info-detail"> <div class="coupons-price coupons-price-active"> <sup>&yen;</sup><span>30</span></div> <div class="coupons-instructions"> <p>
无使用门槛                                </p> <p>新人有礼
                                </p> </div> </div> <div class="coupons-validate-time">2020.04.22-2020.04.26</div> </div> <div class="coupons-status"> <input type="hidden" name="" value="1SCC20200032" /> <p class="coupons-operation-btn canReceive-operation-btn" onclick="receiveCoupons('1SCC20200032')">
                                立即领取
                            </p> </div> </li> </ul> </div> <script type="text/javascript">
    function alertMsg(msg, isfresh) {
        var container = $("#alertMsgContainer");
        var wrapper = "<div id='alertMsgContainer' style='width:100%; display:none:width:auto;height:auto; position: absolute; top: 45%;font-weight:bold;z-index:99999;'>"
            + "<div  style='background: rgba(127,127,127,0.95);padding:1rem 1.5rem 1rem;width:70%;text-align: center;margin:0px auto 0px;'>"
            + "<span id='msgContent' style='z-index:99999;padding:0.8rem 1rem;color:white;'></span>" + "</div></div>";

        if (container.length == 0) {
            $("body").append(wrapper);
            container = $("#alertMsgContainer");
        }
        $("#msgContent").text(msg);
        container.show();
        setTimeout(function () {
            container.hide();
            if (isfresh) {
                window.location.reload();
            }
        }, 1500);
    }
    var flag = true;
    function receiveCoupons(couponsSerialNum) {
        if (flag) {
            flag = false; // 防止连续点击
            $.ajax({
                type: 'POST',
                url: '/Activity/SubmitGiftCard?cardID=' + couponsSerialNum,
                dataType: 'text',
                success: function (data) {
                    flag = true;
                    if ('success' === data) {
                        alertMsg('领取成功！');
                    }
                    else if ('havedCard' === data) {
                        alertMsg('您不是新用户或您已领取该卡券!');
                    }
                    else if ('invalid_login' === data) {
                        window.location.href = "https://m.vancl.com/User/UserLogin?url=" + window.location.href;
                    }
                    else {
                        alertMsg('领取失败！');
                    }
                },
                error: function (e) {
                    flag = true;
                    console.log(e);
                }
            });
        }
    }
</script> </div> </div> <!-- 底部导航栏 --> <div id="nav" class="nav clear"> <a href="/shoppingCar/GetShoppingCarts#nav_shopcart"><span id="nav-shopcart" class="nav-shopcart"></span> <i id="pcount" class="goods-num">0</i> </a> <a href="javascript:void(0)"><span id="addToCart" class="addToCart">加入购物车</span></a> </div> </div> 

<script src="/static/js/zepto.min.js"></script> 
<script src="/static/js/h5trace.min.js?v1.2" defer></script> 

<script type="text/javascript">
        /*客户端去头js start*/
        Zepto(function ($) {
            var bIsAndroid = false;
            var bIsIOS = false;
            if ("object" == typeof (AndroidEnv)) {
                // 判断是在Android环境中
                bIsAndroid = true;
            }
            // IOS code: window.webkit.messageHandlers.OOXX.postMessage("Hello WebKit!")
            else if ("object" == typeof (window.webkit)
                    && "object" == typeof (window.webkit.messageHandlers)
                    && "object" == typeof (window.webkit.messageHandlers.IOSEnv)
                    && "function" == typeof (window.webkit.messageHandlers.IOSEnv.postMessage)) {
                // 判断是在IOS环境中
                bIsIOS = true;
            } else {
                // 判断不是Android或者Ios
            }
            function hideHeaderFooter() {
                $(".topTitle").css('display', 'none');
                //$(".nav").css('display', 'none'); //隐藏单品页加入购物车导航
            }
            if (bIsAndroid || bIsIOS) {                   // Android IOS 环境下，去掉页头页尾
                hideHeaderFooter();
            }
        });
        /*客户端去头js end*/

    Zepto(function($) {

    

        // 初始化头部状态栏
        // (function(){})(window);
        $("#topBack").on('click', function(event) {
            event.preventDefault();
            window.history.back();
            /* Act on the event */
        });

        //激活底部导航栏目标元素
        (function(){
            var targetHrefHash = window.location.hash;
            var targetHref = window.location.pathname=="/"? true:false;
            switch(targetHrefHash){
                case "":
                if (targetHref) {
                    $("#nav-home").attr('class', 'nav-home-active');
                }
                break;
                case "#nav_search":
                $("#nav-search").attr('class', 'nav-search-active');
                break;
                case "#nav_Tshirt":
                $("#nav-Tshirt").attr('class', 'nav-Tshirt-active');
                break;
                case "#nav_shopcart":
                $("#nav-shopcart").attr('class', 'nav-shopcart-active');
                break;
                case "#nav_me":
                $("#nav-me").attr('class', 'nav-me-active');
                break;
                default:
                var childs = $("#nav").children().find('span');
                for (var i = childs.length - 1; i >= 0; i--) {
                    var child = childs[i];
                    var childClass = $(child).attr("class");
                    var hasActiveClass = childClass.indexOf("active")>0? true:false;
                    var deactiveClass = childClass.substring(0,childClass.indexOf("active")-1);
                    if(hasActiveClass){
                        $(child).attr("class",deactiveClass);
                        break;
                    }
                }
            }
        })(window);
    });
    </script> <script type="text/javascript" src="/static/js/swiper.min.js?v3.1.0"></script> <script type="text/javascript">
        var mySwiper=null;
        var tagsArr=[];   
        Zepto(function ($) {
                mySwiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                loop: true
            });

            /*play product video*/
           /* function initVDuration(){
                var vDuration = $('.slider').find('#pdt-video').get(0).duration,
                    mins = Math.floor(vDuration%60)>10? Math.floor(vDuration%60) : '0' + Math.floor(vDuration%60),
                    secs = Math.round(vDuration/60)>10? Math.round(vDuration/60): '0' + Math.round(vDuration/60),
                    vDurationText = mins + '&apos;' + secs + '&quot;';
                $('.slider').find('#v-duration').html(vDurationText);
            }
            initVDuration();*/

            $('.slider').on('click', '#video-icon', function(event) {
                $('#video-player').show();
                $('#pdt-video').get(0).play();
                $('#pdt-video').get(0).onended = function(){
                    $('#video-player').hide();
                };
            });
            $('.slider').on('click','#video-close', function(event) {
                $('#video-player').hide();
                $('#pdt-video').get(0).pause();
            });


            $("#prd-size").on('click', function (event) {
                $("#size-box").toggle();
            });
            var picData=$.trim($("#jsonPicText").val());
            if(picData.length<=0){
                // getPicDetail($('.active'));
                trimPicTxt();
            }
            tagsArr=$("#styleTag li a");
            window.addEventListener('touchstart', function (ev1) {
                window.addEventListener('touchend', function (ev3) {
                    floatTag();
                    autoChangeTag();
                });
            });
            window.addEventListener('scroll',function(ev){ 
                floatTag();
                autoChangeTag();
            });
            //倒计时
            var period=$.trim($("#hidCountdownDistance").val());
            if(period != ''){
                //处理倒计时
                clearInterval(window.countdownTimer);
                fmtCountdown('countdown-time',period);
                window.countdownTimer = setInterval(function () {
                    if (period <= 0) {
                        clearInterval(window.countdownTimer);
                         location.reload();
                    }
                    period -= 1;
                    fmtCountdown('countdown-time',period)
                }, 1000);
            }
        });

        function showGetCoupons() {
            $("#getCoupons").show();
            $("#full-overlay").show();
            $("body").addClass('overflowHide');
        }
        function closeFullOverlay() {
            $("#getCoupons").hide();
            $("#full-overlay").hide();
            $("body").removeClass('overflowHide');
        }
           
        function floatTag(){
                 var tagTopHeight=document.getElementById("tagFlag").offsetTop;
                    var scrollHeight=document.documentElement.scrollTop||document.body.scrollTop;
                    if(scrollHeight >= tagTopHeight){
                            $("#styleTag").removeClass("prd-des").addClass("prd-des box");                            
                        }else{
                            $("#styleTag").removeClass("prd-des box").addClass("prd-des");
                            $(".tagmao").removeClass("tagmao");
                            $(".tagmaoHigh").removeClass("tagmaoHigh");
                        }
            }
        function autoChangeTag(){
            if($("#autoChangeContent").css("display")==="none")
            {
                return;
            }
            var scrollHeight=document.documentElement.scrollTop||document.body.scrollTop;            
            var Arr=$("#styleTag li a");            
            var len=Arr.length;
            if(len==0){
                return;
            }
            if(scrollHeight < $("#styleTag").height()){
                $("#ajaxContent").html("");
                $("#styleTag li").removeClass("active").addClass("black"); 
                Arr.removeClass("active").addClass("black");    
                $(Arr[0]).removeClass("black").addClass("active");
                return;
            }
            for(var i=len-1;i>=0;i--){
                var id=$(Arr[i]).attr("href");
                var compare=$(id).offset().top;
                if($("#styleTag").hasClass("box")){
                    compare=compare-$("#styleTag").height();
                }
                if(scrollHeight+2 >= compare){ 
                    $("#ajaxContent").html("");
                    $("#styleTag li").removeClass("active").addClass("black"); 
                    Arr.removeClass("active").addClass("black");    
                    $(Arr[i]).removeClass("black").addClass("active");
                    break;
                }
            }
        }
        function changeActive(t){
            $("#autoChangeContent").show();
            var id=$(t).attr("href");
            if($(id).offset().top >= $("#tagFlag").offset().top ){
                if($("#styleTag").hasClass("box")){
                    $(id).addClass("tagmao");
                }else{
                    $(id).addClass("tagmaoHigh");
                }
            }
            $("#styleTag li").removeClass("active").addClass("black");
            if(tagsArr.length>0){
                tagsArr.removeClass("active").addClass("black");
            }
            $(t).removeClass("blcak").addClass("active");
        }
        function autoChangeScroll(){
            document.body.scrollTop=parseInt($("#tagFlag").offset().top)-2;
            document.documentElement.scrollTop=parseInt($("#tagFlag").offset().top)-2;
        }
		
      /*  function trimPicTxt(){
            var imgs= $("#prd-des-cont").find("img");
            var a=null;
            for (var i = 0; i < imgs.length; i++) {
                $(imgs[i]).attr('width','100%');
                $(imgs[i]).attr('height','auto');
                a=imgs[i].parentElement;
                if(a.tagName=="A"){
                    a.parentElement.removeChild(a);
                }else{
                    imgs[i].src= $(imgs[i]).attr("data-original");
                }
            }
        }*/

        function getProductInfo(pCode,obj) {
            if (pCode != ""){
                $("#pCode").val(pCode);
                $(obj).addClass("active");
                $(obj).siblings().removeClass("active");//选择&nbsp;颜色/尺码
                $("#chooseColor").val($(obj).html());
                $("#chooseSize").val('');
                $("#size-info").html("选择&nbsp;颜色/尺码");
                $.ajax({
                    type: "GET",
                    url: "/Style/AjaxGetStyleDetail",
                    data: "pcode=" + pCode,
                    dataType: "text",
                    success: function (textstr) {
                        var s = $("<div>" + textstr + "</div>");
                        var productpic = s.children()[0];
                        var producttit=s.children()[1];
                        var productsize = s.children()[2];
                        $("#swiper-container .swiper-wrapper").html(productpic.children[1].innerHTML)
                        mySwiper.init();
                        $("#prd-tit").html(producttit.innerHTML);
                        $("#size").html(productsize.innerHTML);    

                        // initVAppLink(); // 改变openVanclApp href                   
                    }
                });
            }
            return false;
        };
        function chooseSize(sku,obj){
            $(obj).siblings().removeClass("active");
            $(obj).addClass("active");
            var color= $("#chooseColor").val();
            var size= $(obj).html();
            $("#size-info").html("已选:"+color+","+size+"码");
            $("#chooseSize").val(size);
            $("#sku").val(sku);
            return false;
        };
        function changeNum(obj){
            var num=parseInt($("#num").html());
            if(obj=="1"){  
                num=num<=1?num:num-1;
            }else{
                num+=1;
            }
            $("#num").html(num);
        };

        $('#addToCart').on('click', function(event) {
            event.preventDefault();
            addToCart();
        });

        function addToCart(){
            var color=$("#chooseColor").val();
            var size=$("#chooseSize").val();
            var num=parseInt($("#num").html());
            if(!num||num==undefined||num<1){showTips("请选择购买数量");return false;}
            if(!color||color==undefined){showTips("请选择颜色和尺寸");return false;}
            if(!size||size==undefined){showTips("请选择颜色和尺寸");return false;}
            var sku=$("#sku").val();
            $("#addCart").hide();
            $("#adding").show();
            $.ajax({
                data: { clotheCode: sku, num: num, sync: true },
                url: "/ShoppingCar/add2cart",
                dataType: "json",
                success: function (data) {
                    if(data.y==2){
                        window.location.href="https://m.vancl.com/User/UserLogin?url=https%3a%2f%2fm.vancl.com%2fstyle%2findex%2f6388723";
                    }
                    else{
                        num+=parseInt($("#pcount").html());
                    $("#pcount").html(num);
                        // showConfirm('商品已加入购物车','前往购物车','/shoppingCar/GetShoppingCarts');
                        // $("#size-box").hide();
                    }                    
                }
            });
            
        };

        function getPicDetail(obj){
            $("#tableWrap").show();
            $(obj).siblings().removeClass("active");
            if(tagsArr.length>0){
                tagsArr.removeClass("active").addClass("black");
            }
            $(obj).addClass("active");
            var styleId= $("#styleId").val();
            var productCode = $("#pCode").val();
            $.ajax({
                data:{styleId:styleId,productCode:productCode},
                url:"/Style/AjaxGetPicText",
                dataType:"text",
                success:function(data){
                    //$("#prd-des-cont").html(data);
                    $("#autoChangeContent").hide();
                    $("#ajaxContent").html(data);
                    autoChangeScroll();
                    floatTag();
                    trimPicTxt();
                }

            });
        };
        function getComments(obj){
              $("#tableWrap").hide();
              $(obj).siblings().removeClass("active");
              if(tagsArr.length>0){
                tagsArr.removeClass("active").addClass("black");
              }
              $(obj).addClass("active");
              var html='';
              var index=parseInt($("#index").val());
              var styleId=parseInt($("#styleId").val());
              $.post('/ajax/GetProductComment/',{'id':styleId,'index':index,'size':5},function(data){
                    $.each(data,function(index,item){
                        html+='<div class="comment"><p class="review-uInfo clear"><span class="name">来自:'+item.UserName+'</span><span class="date">'+item.AddTime+'</span></p><p class="cont">'+item.Content+'</p>'+createCommentPicHtmlStr(item.CommentPics);
                        if(item.CommentReply && item.CommentReply.Content){ //是否有官方回复
                            html += '<p class="comment-reply"><span class="vancl-reply">官方回复：</span><span>'+ item.CommentReply.Content +'</span></p>';
                        }
                        html += '</div>';    
                    });
                    if(data.length==5){
                        html+='<div id="more" class="more"><a id="getMore" href="javascript:;" onclick="getMoreCommont()">查看更多</a><a id="getLoading" class="hide" href="javascript:;" >加载中...</a></div>';
                    }
                    //$("#prd-des-cont").html(html);
                    $("#autoChangeContent").hide();
                    $("#ajaxContent").html(html);
                    autoChangeScroll();
                    floatTag();
                    showFScreenImg(); //绑定评论图片全屏显示
              });

        };
        function createCommentPicHtmlStr(commentPics)
        {      
            if(commentPics.length>0){
                var returnStr = '<ul class="commentPics">';      
                for(var i=0;i<commentPics.length;i++)
                {
                   returnStr += '<li><img src="'+commentPics[i].imgUrl+'"/></li>';
                }
                returnStr += '</ul>';
                return returnStr;
            }else{
                return "";
            }
        }

        function getAsk(obj){
              $("#tableWrap").hide();
              $(obj).siblings().removeClass("active");
              if(tagsArr.length>0){
                tagsArr.removeClass("active").addClass("black");
              }
              $(obj).addClass("active");
              //subform
              var form='<div class="subform"><h3 class="tit">我要咨询:</h3><div class="cont"><textarea id="cont" placeholder="您输入的字数不要超过60个字" max-length="60"></textarea></div><div class="sub"><a href="javascript:;" onclick="subAsk()" title="">提交</a></div></div>';
              //$("#prd-des-cont").html(form);
              $("#ajaxContent").html(form);
              var html='';
              var styleId=parseInt($("#styleId").val());
              $.post('/ajax/GetProductQuestions/',{'id':styleId,'index':1,'size':5},function(data){
                    $.each(data,function(index,item){
                        html+='<div class="quest-wrap"><p class="question">问:'+item.Content+'</p></div><div class="questioninfo clear"><span class="name">用户:'+item.UserName+'</span><span class="date">'+item.AddTime+'</span></div><div class="rep-wrap"><p class="reply">'+item.retext+'</p></div>';
                    });
                    if(data.length==5){
                        html+='<div id="more" class="more"><a id="getMore" href="javascript:;" onclick="getMoreQuestion()">查看更多</a><a id="getLoading" class="hide" href="javascript:;" >加载中...</a></div>';
                    }
                    //$("#prd-des-cont").append(html);
                    $("#autoChangeContent").hide();
                    $("#ajaxContent").append(html);
                    autoChangeScroll();
                    floatTag();
              });
              
        };
        function hide(){
            $("#over-lay").hide();
            return false;
        };
        function showTips(cont){
            $("#tips-txt").html(cont);
            $("#over-lay").show();
            $("#size-box").show();
            $("#tips-btn").empty();
            setTimeout(cancel,3000);
            return false;
        };
        function showConfirm(cont,txt,href){
            $("#tips-txt").html(cont);
            $("#tips-btn").html('<a href="'+href+'" style="display: block;color:#fff;margin: 0.6em 0 0 0;" >'+txt+'</a>');
            $("#over-lay").show();
            setTimeout(cancel,3000);
            return false;
        };
        function cancel(){
            $("#over-lay").hide();
            $("#addCart").show();
            $("#adding").hide();
            return false;
        };
        function getMoreCommont(){
            $("#getMore").hide();
            $("#getLoading").show();
            var index=parseInt($("#index").val());
            index++;
            $("#index").val(index);
            var styleId=parseInt($("#styleId").val());
            var html='';
            $.post('/ajax/GetProductComment/',{'id':styleId,'index':index,'size':5},function(data){
                $.each(data,function(index,item){
                    html+='<div class="comment"><p class="review-uInfo clear"><span class="name">来自:'+item.UserName+'</span><span class="date">'+item.AddTime+'</span></p><p class="cont">'+item.Content+'</p>'+createCommentPicHtmlStr(item.CommentPics);
                    if(item.CommentReply && item.CommentReply.Content){ //是否有官方回复
                        html += '<p class="comment-reply"><span class="vancl-reply">官方回复：</span><span>'+ item.CommentReply.Content +'</span></p>';
                    }
                    html += '</div>';    
                });
                $("#more").before(html);
                $("#getLoading").hide();
                if(data.length<5){
                    $("#more").hide();
                }else{
                    $("#getMore").show();
                }

                showFScreenImg(); //绑定评论图片全屏显示
            });
        };
        function getMoreQuestion(){
            $("#getMore").hide();
            $("#getLoading").show();
            var index=parseInt($("#indexQ").val());
            index++;
            $("#indexQ").val(index);
            var styleId=parseInt($("#styleId").val());
            var html='';
            $.post('/ajax/GetProductQuestions/',{'id':styleId,'index':index,'size':5},function(data){
                $.each(data,function(index,item){
                    html+='<div class="quest-wrap"><p class="question">问:'+item.Content+'</p></div><div class="questioninfo clear"><span class="name">用户:'+item.UserName+'</span><span class="date">'+item.AddTime+'</span></div><div class="rep-wrap"><p class="reply">'+item.retext+'</p></div>';    
                });
                $("#more").before(html);
                $("#getLoading").hide();
                if(data.length<5){
                    $("#more").hide();
                }else{
                    $("#getMore").show();
                }
                
            });
        }
        function subAsk(){
            var cont=$("#cont").val();
            var styleId=$("#styleId").val();
            var pCode=$("#pCode").val();
            if(cont.trim()==""){
                showTips("内容不能为空");
                return false;
            }
            $.post("/style/StyleQuestion",{ "styleId": styleId, "pcode": pCode, sync: true, "AskContent": cont },
                function (data) {  
                    if(data.v){ 
                        showTips("提交成功");
                        $("#cont").val("");
                    }else{
                       showTips("请先登录,再提交"); 
                       $("#cont").val("");
                    }
                }
            );
        };

        function changeTab(obj,i){
            $("#tableWrap").hide();
            $(obj).siblings().removeClass("active");
            $(obj).addClass("active");
            var jsonData=$.parseJSON($("#jsonPicText").val());
            $.each(jsonData,function(index,item){
                if(i==index){   
                    var htmlStr="";
                    for(var j=0;j<item.PicUrl.length;j++)
                    {
                        htmlStr+="<img src=\""+item.PicUrl[j]+"\" />";
                    }                 
                    $("#prd-des-cont").html(htmlStr);
                    return false;
                }
            });

        }

        // 全屏显示评论图片
        function showFScreenImg(){
            $('.commentPics > li').on('click', 'img', function(event) {
                // event.preventDefault();
                event.stopPropagation();
                var curImgSrc = $(this).attr('src');
                $('#showFScreenImg > img').attr('src', curImgSrc);
                $('#showFScreenImg').css('display','-webkit-box');
            });
            $('#showFScreenImg').on('click', function(event) {
                // event.preventDefault();
                /* Act on the event */
                $(this).hide();
            });
        }

       function fmtCountdown(id,time_distance) {
            var int_day = parseInt(time_distance / (60 * 60) / 24);
            var int_hour = parseInt(time_distance / (60 * 60) % 24);
            var int_minute = parseInt(time_distance / 60 % 60);
            var int_second = parseInt(time_distance % 60);
            int_hour = checkTime(int_hour + int_day * 24);
            int_minute = checkTime(int_minute);
            int_second = checkTime(int_second);
            function checkTime(t) {
                if (t < 10 && t >= 0) {
                    t = '0' + t;
                }
                return t;
            }
            $('#'+id).find('.countdown-time-hour').text(int_hour);
            $('#'+id).find('.countdown-time-min').text(int_minute);
            $('#'+id).find('.countdown-time-sec').text(int_second);
        }
    </script> </body> </html>
