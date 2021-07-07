<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--start-menu-->
    <script src="js/simpleCart.min.js"> </script>
    <link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/memenu.js"></script>
      <script src="easyui/jquery.min.js"></script>
    <script src="easyui/jquery.easyui.min.js"></script>
    <script src="easyui/locale/easyui-lang-zh_CN.js"></script>
    <link href="easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="easyui/themes/icon.css" rel="stylesheet" />
    <script>$(document).ready(function () { $(".memenu").memenu(); });</script>
    <!--dropdown-->
    <script src="js/jquery.easydropdown.js"></script>
    <title>首页</title>
    <style>
      *{
          padding:0;
          margin:0;
      }
      #container {
  /*border: 2px solid rgb(255 0 0);*/
  margin: 0 auto;
  position: relative;
  width: 520px;
  height: 280px;
  overflow: hidden;

}
#list {
  position: absolute;
  z-index: 1;
  width: 3640px;
}
#list img {
  float: left;
  width: 520px;
  height: 280px;
}
#buttons {
  height: 10px;
  width: 100px;
  position: absolute;
  left: 0;/*设置水平垂直居中*/
  right: 0;/*设置水平垂直居中*/
  margin: 0 auto;/*设置水平垂直居中*/
  bottom: 20px;
  z-index: 2;
}
#buttons span {
  float: left;
  margin-right: 5px;
  width: 10px;
  height: 10px;
  border: 1px solid #cccccc;
  border-radius: 50%;
  background: #333;
  cursor: pointer;
}
#buttons .on {
  background: orangered;
}
.topnav{
    width:300px;
    position:relative;
    right:-100px;
   float:left;
   border:1px solid rgb(186 185 222);
    border-radius:15px;
}
.topnav ul li{
    margin:15px;
   font-weight:bold;
}
.topnav ul{
    margin:0;
    padding:0;
    
}
.topnav ul li a:hover {
  position: relative;
  left: 100%;
  margin-left: -12px;
  transition: all 0.3s ease-in-out;
  background: #539770;
}
.arrow {
  width: 40px;
  height: 40px;
  display: none;
  position: absolute;
  top: 0; /*设置水平垂直居中*/
  bottom: 0; /*设置水平垂直居中*/
  margin: auto 0; /*设置水平垂直居中*/
  font-size: 36px;
  font-weight: bold;
  line-height: 39px;
  text-align: center;
  color: #fff;
  background-color: RGBA(0, 0, 0, .3);
  cursor: pointer;
  z-index: 2;
}
.arrow:hover{
  background-color: RGBA(0, 0, 0, .7);
}
#container:hover .arrow {
  display: block;
}
#prev{
  left: 10px;
}
#next{
  right: 10px;
}   
#main{
    background:rgb(255 255 255);
    border:1px solid #cccccc;
    border-radius:15px;
    box-shadow:2px 2px 5px #000;
}
 .search-bar{
       border:1px solid #cccccc;
       border-radius:10px;
       box-shadow:2px 2px 5px #000;
 }
 .product-main{
  -webkit-transition-property: background;
  transition-property:background;
  -webkit-transition-duration:.5s;
  transition-duration:.5s;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
  -webkit-transition-delay: .18s;
      transition-delay:.18s;
 }
 .product-main:hover{
     background:rgb(234 232 235);
      border-radius: 35px;
 }
 .change1{
     text-align:center;
     
     width:80px;
     background:#fff;
     
    -webkit-transition-property: background;
    transition-property:  background;
  
   
    -webkit-transition-duration: 2s;
    transition-duration: 2s;
    -webkit-transition-timing-function: ease-in-out;
    transition-timing-function: ease-in-out;
 }
 .change1:hover{
       background: #12c2e9;  /* fallback for old browsers */
       border:1px solid #cccccc;
      border-radius:10px;     
      transform:scale(1.2);
           
 }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <div id="main">
     <%-- 头部名称--%>
    <div class="logo">
        <a href="index.aspx">
            <h1>淘奇网</h1>
        </a>
    </div>
    <%-- 头部名称--%>

    <%-- 分类菜单界面--%>
    <div class="header-bottom">
      
            <div class="header">
                <div class="col-md-3 header-left">
                   
                   
                </div>
                <div class="col-md-6">
                    <div class="search-bar">
                        <asp:TextBox ID="txtQuery" runat="server" Text="输入要搜索的宝贝"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜索玩意儿';}"></asp:TextBox>
                        <asp:Button ID="btnQuery" runat="server" OnClick="btnQuery_Click" />
                    </div>
                </div>
                 <div class="col-md-3 header-right">
                   
                   
                </div>
                <div class="clearfix"></div>
            </div>

            
        
    </div>
     <%-- 分类菜单界面--%>
 
         <div class="topnav">
             <div class="container">
                 
                      <ul >
                            <li class="active"><a href="index.aspx" class="easyui-linkbutton" iconcls="icon-house">首页</a></li>
                          <div class="col-md-1">
                              
                            <li class="grid">
                                <div class="change1">
                                     <a href="products.aspx?item=家用饰品">家用饰品</a>
                                </div>
                               

                            </li>
                            <li class="grid">
                                <div class="change1">
                                     <a href="products.aspx?item=厨房餐饮">厨房餐饮</a>
                                </div>
                               

                            </li>
                            <li class="grid">
                                <div class="change1">
                                      <a href="products.aspx?item=办公文具">办公文具</a>
                                </div>
                              

                            </li>
                            <li class="grid">
                                <div class="change1">
                                      <a href="products.aspx?item=玩具娱乐">玩具娱乐</a>
                                </div>
                              

                            </li>
                            <li class="grid">
                                <div class="change1">
                                    <a href="products.aspx?item=智能科技">智能科技</a>
                                    </div>
                            </li>
                            <li class="grid">
                                 <div class="change1">
                                     <a href="products.aspx?item=全部">全部</a>
                                     </div>
                            </li>
                           </div>
                           <div class="col-md-1">
                               
                            <li class="grid">
                                <div class="change1">
                                     <a href="products.aspx?item=装饰摆饰">装饰摆饰</a>
                                </div>
                               

                            </li>
                            <li class="grid">
                                <div class="change1">
                                     <a href="products.aspx?item=厨房餐饮">厨房餐饮</a>
                                </div>
                               

                            </li>
                            <li class="grid">
                                <div class="change1">
                                      <a href="products.aspx?item=办公文具">办公文具</a>
                                </div>
                              

                            </li>
                            <li class="grid">
                                <div class="change1">
                                      <a href="products.aspx?item=玩具娱乐">玩具娱乐</a>
                                </div>
                              

                            </li>
                            <li class="grid">
                                <div class="change1">
                                    <a href="products.aspx?item=智能科技">智能科技</a>
                                    </div>
                            </li>
                            <li class="grid">
                                 <div class="change1">
                                     <a href="products.aspx?item=全部">全部</a>
                                     </div>
                            </li>
                            </div>
                        </ul>
                
                 
               
                
             </div>
                        
                    </div>
       <%-- 轮播图--%>
        <div id="container" >
  <div id="list" style="left: -520px">
    <img src="imges/img5.png" alt=""/>
    <img src="imges/img4.png" alt=""/>
    <img src="imges/img3.png" alt=""/>
    <img src="imges/img2.png" alt=""/>
    <img src="imges/img1.png" alt=""/>
    <img src="imges/img6.png" alt=""/>
    <img src="imges/img7.png" alt=""/>
  </div>
  <div id="buttons" class="clearFix">
    <span class="on"></span>      <%-- 设置on属性来标识当前播放图片--%>
    <span></span>
    <span></span>
    <span></span>
    <span></span>
  </div>
  <a href="javascript:;" rel="external nofollow" rel="external nofollow" id="prev" class="arrow">&lt;</a> 
  <!-- &lt代表小于号
  &gt代表大于号 -->
  <a href="javascript:;" rel="external nofollow" rel="external nofollow" id="next" class="arrow">&gt;</a>
</div>
    
         <%-- 轮播图--%>
 
      <%-- 轮播图实现js--%>        
<script>
    /**
 * Created by zhm on 17.1.15.
 */
    /*
    *知识点：
    *  this使用
    *  DOM事件
    *  定时器
    *
    *  思路：
    *  （1）设置它左右移动
    *    问题：传入数字为NAN??
    *    解决：在页面中增加属性style：left:0
    *  （2）平滑移动（移动时间固定，每次移动的距离不一样）
    *    问题：连续点击出现晃动？---设置标志位
    *       出现空白页？？--- 第一张图片前加上最后一张，最后一张图片前加上第一张
    *               在类list的标签中增加属性style：left:-520px;
    *               设置无限滚动判断
    *
    *  （3）设置小圆点
    *    首先将所有的类置为空，当前类置为on
    *    绑定小圆点和图片
    *    绑定小圆点和左右箭头
    *    设置定时器，鼠标划上去停止，移开自动轮播
    *
    * */
    //1.获取元素
    var container = document.getElementById("container");
    var list = document.getElementById("list");
    var prev = document.getElementById("prev");
    var next = document.getElementById("next");
    var buttons = document.getElementById('buttons').getElementsByTagName('span');
    var timer = null;
    var timer2 = null;
    var flag = true;
    var index = 0;
    //2.设置函数
    function moveImg(dis) {
        var time = 1000;//运动的总时间
        var eachTime = 100;//每次小移动的时间
        var eachDis = dis / (time / eachTime);//每次小移动的距离
        var newWeizhi = parseInt(list.style.left) + dis;//新位置
        flag = false;
        function eachMove() {
            if (dis > 0 && parseInt(list.style.left) < newWeizhi || dis < 0 && parseInt(list.style.left) > newWeizhi) {
                list.style.left = parseInt(list.style.left) + eachDis + 'px';
            } else {
                flag = true;
                clearInterval(timer);
                list.style.left = newWeizhi + 'px';
                //无限滚动判断
                if (newWeizhi == 0) {
                    list.style.left = -2600 + 'px';
                }
                if (newWeizhi == -3120) {
                    list.style.left = -520 + 'px';
                }
            }
        }
        timer = setInterval(eachMove, 100);
    }
    //3.设置点击切换图片
    next.onclick = function () {
        if (!flag) return;
        moveImg(-520);
        //绑定箭头和小圆点
        if (index == 4) {
            index = 0;
        } else {
            index++;
        }
        buttonsShow();
    };
    prev.onclick = function () {
        if (!flag) return;
        moveImg(520);
        //绑定箭头和小圆点
        if (index == 0) {
            index = 4;
        } else {
            index--;
        }
        buttonsShow();
    };
    //4.设置小圆点的绑定
    function buttonsShow() {
        //将之前的小圆点的样式清除
        for (var i = 0; i < buttons.length; i++) {
            if (buttons[i].className == "on") {
                buttons[i].className = "";
                break;
            }
        }
        buttons[index].className = "on";
    }
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].value = i;
        //使用自执行函数解决i的赋值问题
        (function () {
            buttons[i].onclick = function () {
                if (this.value == index) return;
                var offset = (this.value - index) * -520;
                moveImg(offset);
                index = this.value;
                buttonsShow();
            }
        })();
    }
    //5.设置自动轮播
    timer2 = setInterval(next.onclick, 1500); 
    container.onmouseover = function () {
        clearInterval(timer2);
    };
    container.onmouseout = function () {
        timer2 = setInterval(next.onclick, 1000);
    };


</script>

         <%-- 轮播图实现js--%> 
   <%-- 产品界面--%>
    <div class="product">
      
            <div class="product-top">
                <div class="product-one">
                    <asp:Repeater ID="rptPro" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3 product-left">     <%--调用了bootstrap框架的网格布局--%>
                                <div class="product-main simpleCart_shelfItem">
                                    <a href='single.aspx?id=<%#Eval("ID") %>' class="mask">
                                        <%--通过src"200px" src="<%#Eval("pImagePath").ToString().Substring(3) %>"来插入数据库中存储的图片路径--%>
                                        <img class="img-responsive zoom-img" width="125px" height="200px" src="<%#Eval("pImagePath").ToString().Substring(3) %>" alt="" /></a>
                                    <div class="product-bottom">  
                                         <%--通过后台的pTile、pTitle等一系列值来设置便签中的text值--%>
                                        <h3><%#Eval("pTitle").ToString().Length>=15?Eval("pTitle").ToString().Substring(0,15):Eval("pTitle").ToString() %></h3>
                                        <p><%#Eval("pContent").ToString().Length>=15?Eval("pContent").ToString().Substring(0,15):Eval("pContent").ToString() %></p>
                                        <h4><a class="item_add" href="single.aspx?id=<%#Eval("ID") %>"><i></i></a><span class=" item_price">￥ <%#Eval("pPrice") %></span></h4>
                                    </div>

                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="clearfix"></div>
                </div>
            </div>
     
    </div>
  <%-- 产品界面--%>
        
        </div>
</asp:Content>

