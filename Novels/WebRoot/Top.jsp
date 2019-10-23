<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>NOVELS</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

	    <style type="text/css">
    #main{
        padding-top:100px;
        padding-left: 20px;
        height: 500px;
    }
    #main-left{
        width:25%;
        height: 500px;
        float: left;
    }
    #main-img{
        width:100%;
        height: 500px;
    }
    #main-middle{
        float: left;
        width: 50%;
        height: 500px;
    }
    #bookIntro-title{
        font-weight: bold;
        text-align: center;
        color: black;
        text-decoration: none;
    }
    #bookIntro-content{
        font-family: 楷体;
        font-size: 20px;
    }
    #bookIntro-list{
        list-style: outside;
        list-style-type: none;
        float: left;
    }
    #main-right{
        width:24%;
        height: 500px;
        float: left;
    }
    #main-title{
        text-align: center;
    }
    #main-neirong{
        line-height: 50px;
        list-style-type: none;
        text-decoration: none;
    }
    .main-neirong a:hover{
        color: brown;
    }
    #tuijian{
        padding-top: 30px;
        width: 80%;
        float: left;
        height: 400px;
    }
    #tuijian-neirong{
        color: black;
        text-align: center;
        float: left;
        margin: 10px;
    }
    #jingpingbang{
        padding-top: 30px;
        width: 19%;
        float: left;
        height:400px ;
    }
    #jingpingbang-title{
        text-align: center;
    }
    #item{
        line-height: 40px;
        list-style-type: none;
        text-decoration: none;  
    }
    .item a:hover{
        color: brown;
    }
    </style>
  </head>
  
  <body>
     <jsp:include page="nav.jsp"></jsp:include>
<div id="d1" class="d1">
<div id="main">
    <div id="main-left">
       <marquee direction=left scrollamount="5" behavior=scroll onmouseover=this.stop() onmouseout=this.start()>
            <a href="#"><img id="main-img" src="novel/4b45b44c0867e0b516ef22f30cd4e8a1.jpg"></a>
            <a href="#"><img id="main-img" src="novel/1dd56b3197963b8a9e8f4e34a8a3dfd0.jpg"></a>
            <a href="#"><img id="main-img" src="novel/2e2e1665bb5f0db0a1d5c8f261f552a1_450x590.jpg"></a>
            <a href="#"><img id="main-img" src="novel/1a32d573c96b477ccbcc02dd4d4fc7e8.jpg"></a>
        </marquee>
    </div>
    <div id="main-middle">
        <dl id="bookIntro-rect">
            <h4 id="bookIntro-title"><a href="novel-jianjie.jsp">麻衣神探：学了相术的报应来的如此之快。</a></h4>
            <dd id="bookIntro-content">简介：我叫曌远，我师傅学了相术能看穿人心，被七里八乡村民称颂为天师，然而在我十五岁那年，他被人挖坟掘墓，整个人皮被剥掉挂在树上。
            村里人都说师傅是因为泄漏天机太多，遭了老天爷的报应。
            而学了相术的我知道言多必失，早有这么一天，我也会步入师傅后尘，却没想到报应来的如此之快。
            那一天，同样的地方，在同一棵树上，挂了一具人皮女尸……
            </dd>
        </dl>
        <dl id="bookIntro-rect">
            <h4 id="bookIntro-title"><a href="#">山海秘藏：寻龙点穴，观星斗尸。</a></h4>
                <dd id="bookIntro-content">简介：我曾上过山巅，也曾下过沧海，华夏每一个神秘的地方，都有我冒险的足迹！
                遥远的西域古国，竟住着永生不死的绝美女王？
                浩瀚的秦始皇陵，藏着天下第一神剑。
                飘渺的北海岛屿，数百人目睹传说中的真龙？
                阴暗的湘西老棺，僵尸之王蠢蠢欲动。
                闯死亡禁地，夺国家宝藏，寻龙，点穴，观星，斗尸。
                有我在此，通通百无禁忌！
                </dd>
        </dl>
        <dl id="bookIntro-rect">
            <h4 id="bookIntro-title"><a href="#">匠擎：我是一个手艺人，专业锔瓷。</a></h4>
            <div>
                <ol id="bookIntro-list">
                    <li>
                    <a href="#">[职场] 娶个空姐当老婆，是啥体验？</a>
                    </li>
                    <li>
                    <a href="#">[爽文] 传奇佣兵做回小保安。</a>
                    </li>
                    <li>
                    <a href="#">[热血] 这是扮猪吃老虎的传奇故。</a>
                    </li>
                </ol>
            </div>
            <div>
            <ol id="bookIntro-list">
                <li>
                <a href="#">[悬疑] 魂灭尸动七煞聚，子午藏血蕴中邪</a>
                </li>
                <li>
                <a href="#">[悬疑] 替村里办丧事，却害死全村人。</a>
                </li>
                <li>
                <a href="#">[热血] 战尽天骄，踏圣之尊位！</a>
                </li>
            </div>
        </dl>
    </div>
    <div id="main-right">
        <table boder="1">
        <h3 id="main-title">排行榜</h3>
        <ol id="main-neirong">
            <li class="main-neirong"><a href="#">1、山海密藏</a></li>
            <li class="main-neirong"><a href="#">2、马大妞和睦预计</a></li>
            <li class="main-neirong"><a href="#">3、我的空姐老婆</a></li>
            <li class="main-neirong"><a href="#">4、英雄联盟之最强路人王</a></li>
            <li class="main-neirong"><a href="#">5、追凶神探</a></li>
            <li class="main-neirong"><a href="#">6、疯语者</a></li>
            <li class="main-neirong"><a href="#">7、黄泉阴司</a></li>
            <li class="main-neirong"><a href="#">8、我给阎王当助理</a></li>
        </ol>
        </table>
    </div>
</div>
<div id="tuijian">
    <h2>封面推荐</h2>
    <div id="tuijian-neirong"><a href="#"><img src="novel/2e2377a394851ddc7d0ae9f4b8f561f7.jpg" width="150" height="200"><br><b>追凶神探</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/4e48753a6dd5a40b0868b73756299c81.jpg" width="150" height="200"><br><b>行走阴阳</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/4fa8d058aa23ebe924eef99f1966aedb.jpg" width="150" height="200"><br><b>鬼禁食</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/5fd60115a254a97935ab13cf63d1cadf.jpg" width="150" height="200"><br><b>修仙归来</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/6d4bb633d4b0c3d9a4555dcfc1e86246.jpg" width="150" height="200"><br><b>我的空姐老婆</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/6e72d2ac3d74fd1c84fab1f71763b277_450x590.jpg" width="150" height="200"><br><b>无始不灭诀</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/6f7fec8e9b886fb0050a2d63d0844c2a.jpg" width="150" height="200"><br><b>大学生诡探</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/7aff2b3c48b6da2fdd96c01b370deaf7.jpg" width="150" height="200"><br><b>医道至尊</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/8c8b21e473fbc2c3e778466cd7969d55.jpg" width="150" height="200"><br><b>参棺</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/8df0f12691cc5a8933cb298256c9a6b4.jpg" width="150" height="200"><br><b>冥海禁地</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/49bc794528cdd93971dcf92052a2d302.jpg" width="150" height="200"><br><b>阴阳师</b></a></div>
    <div id="tuijian-neirong"><a href="#"><img src="novel/57ff34c86d5ff58d89c7ade954625932.jpg" width="150" height="200"><br><b>海墓录</b></a></div>
</div>
<div id="jingpingbang">
    <h2 id="jingpingbang-title">精品榜</h2>
    <ol id="item">
        <li class="item">
            <a href="#">[爽文]&nbsp;不朽神王</a>
        </li>
        <li class="item">
            <a href="#">[仙侠]&nbsp;至尊邪神</a>
        </li>
        <li class="item">
            <a href="#">[热血&nbsp;圣尊</a>
        </li>
        <li class="item">
            <a href="#">[热血]&nbsp;盖世帝尊</a>
        </li>
        <li class="item">
            <a href="#">[异能]&nbsp;绝品道医在都市</a>
        </li>
        <li class="item">
            <a href="#">[悬疑]&nbsp;异案调查局</a>
        </li>
        <li class="item">
            <a href="#">[热血]&nbsp;修仙归来</a>
        </li>
        <li class="item">
            <a href="#">[热血]&nbsp;女总裁的痞子保镖</a>
        </li>
        <li class="item">
            <a href="#">[天才流]&nbsp;史上最强交流群</a>
        </li>
        <li class="item">
            <a href="#">[热血]&nbsp;最强异变</a>
        </li>
        <li class="item">
            <a href="#">[悬疑]&nbsp;盗天墓之昆仑秘境</a>
        </li>
        <li class="item">
            <a href="#">[悬疑]&nbsp;活人祭祀</a>
        </li>
    </ol>
</div>
</div>
</div>
  </body>
</html>
