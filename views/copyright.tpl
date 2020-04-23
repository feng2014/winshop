<div id="nav" class="nav clear"> 
<a href="/"> <span id="nav-home" class="nav-home"></span> </a>
<a href="/category#nav_search"> <span id="nav-search" class="nav-search"></span> </a>
<a href="/channel/index/838#nav_Tshirt"> <span id="nav-Tshirt" class="nav-Tshirt"></span> </a>
<a href="/shopcart/"> <span id="nav-shopcart" class="nav-shopcart"></span> <i id="pcount" class="goods-num">0</i> 
<a href="/user/"> <span id="nav-me" class="nav-me"></span> </a> </div> </div> 
 <script src="/static/js/zepto.min.js"></script> 

 
<!-- 底部导航栏 --> 	
<script src="/static/js/h5trace.min.js?v1.8" defer></script> 
<script type="text/javascript">

    Zepto(function($) {

           var bIsAndroid = false ;
           var bIsIOS = false ;
           if ("object" == typeof(AndroidEnv)) {        
                    // 判断是在Android环境中
                    bIsAndroid = true ;
           } 
           // IOS code: window.webkit.messageHandlers.OOXX.postMessage("Hello WebKit!")
           else if ("object" == typeof(window.webkit) 
                    && "object" == typeof(window.webkit.messageHandlers) 
                    && "object" == typeof(window.webkit.messageHandlers.IOSEnv) 
                    && "function" == typeof(window.webkit.messageHandlers.IOSEnv.postMessage)) 
           {        
                    // 判断是在IOS环境中
                    bIsIOS = true ;
           } else {
                    // 判断不是Android或者Ios
           }
           function hideHeaderFooter() { 
                    $(".topTitle").css('display','none');
                    $(".nav").css('display','none');
           }
           if (bIsAndroid || bIsIOS) {                   // Android IOS 环境下，去掉页头页尾
                    hideHeaderFooter() ;
           }              
     });
    
    Zepto(function($) {
        


        // 初始化头部状态栏
        // (function(){})(window);
        $("#topBack").on('click', function(event) {
            event.preventDefault();
            window.history.back();
            /* Act on the event */
        });

        // 判断是否有未读消息
        (function(){
            var hasNoReadMsg = localStorage.getItem('hasNoReadMsg');
            if(hasNoReadMsg==null || hasNoReadMsg=='true'){
                $('.hasNewMsg').show();
            }else{
                $('.hasNewMsg').hide();
            }
        })(window);

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

        // 显示搜索弹出层
        (function(){
            
            // 点击搜索按钮进行搜索
            $('#search-btn').on('click',function(event){
                setSearchHis();
            });

            // 聚焦搜索框时显示搜索层
            // 
            $('#search-input').focus(function(event) {
                /* Act on the event */
                event.preventDefault();
                // 清除历史显示节点
                var dispParent = $('.search-history ul');
                dispParent.children('li').remove();
                dispSchHis();
                $('#search-popup').css('display','block');
                // slide hotwords

                var swiper = new Swiper('.hotwords', {
                    slidesPerView: 5,
                    // spaceBetween: 0,
                    freeMode: true
                });
            });


            //根据点击位置显示和隐藏搜索层
            $('#index-search,#search-popup').on('click', function(event) {
                var e = event||window.event;
                var targetEl = e.target||e.srcElement;
                var targetElClass = $(targetEl).attr('class');
                var arrClass = new Array('search-input','hotwords-tit','search-history-tit','clear-srhHistory');
                var isInArr = $.inArray(targetElClass, arrClass)==-1? true:false;
                if(isInArr){
                    $('#search-popup').css('display','none');
                }
            });

            // 获取搜索历史
            function getSearchHis(){
                var strHistory = localStorage.getItem('searchKey');
                if(strHistory==null){
                    // strHistory = new Array();
                    strHistory = '';
                }/*else{
                    strHistory = strHistory.split(',');
                }*/
                return strHistory;
            }

            // 设置搜索历史
            function setSearchHis(){
                var schHistory = getSearchHis();
                var currKey = $('#search-input').val().trim();
                if(currKey==''){
                    return false;
                }
                currKeyLi = '<li>'+currKey+'</li>';
                schHistory = schHistory.replace(currKeyLi,'');
                // if(existIndex != -1){
                //     schHistory.splice(existIndex,1);
                // }
                schHistory = currKeyLi + schHistory;
                localStorage.setItem('searchKey',schHistory);
            }
            
            //显示历史搜索
            function dispSchHis(){
                var schHistory = getSearchHis();
                var dispParent = $('.search-history ul');
                dispParent.html(schHistory);
                // schHistory.forEach(function(index){
                //     // var child = $("<li></li>").text(index);
                //     dispParent.append(child);
                // });
            }

            //清空搜索历史
            (function clearSchHis(){
                $('#clear-srhHistory').on('click', function(event) {
                    event.preventDefault();
                    if(getSearchHis().length<=0)
                    {
                        return false;
                    }
                    var dispParent = $('.search-history ul');
                    dispParent.children('li').remove();
                    localStorage.removeItem('searchKey');
                });
            })(window);

            // 点击热搜和历史记录搜索
            (function(){
                $('.hotwords-list span').on('click', function(event) {
                // event.preventDefault();
                    var targetVal = getTargetVal(event);
                    setSchInputVal(targetVal);
                    doSearch();
                })

                $('.search-history ul').on('click','li',function(event) {
                // event.preventDefault();
                    var targetVal = getTargetVal(event);
                    setSchInputVal(targetVal);
                    doSearch();
                })

                function getTargetVal(event){
                    e = event||window.event;
                    var targetEl = e.target||e.srcElement;
                    return $(targetEl).text();
                }
                function setSchInputVal(value){
                    $('#search-input').val(value);
                }
                function doSearch(){
                    $('#search-btn').click();
                }
            })(window)

        })(window);

    });
    </script> 