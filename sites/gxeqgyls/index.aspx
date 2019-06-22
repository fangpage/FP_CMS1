<%using(FP_News.#) %>
<%using(FangPage.WMS.#) %>
<!DOCTYpE html pUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>${pagetitle}</title>
<script type="text/javascript" src="statics/js/jquery.min.js"></script>
<link href="statics/css/index.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="statics/js/jQuery.imgPlayer.js"></script>
<script type="text/javascript" src="statics/js/common.js"></script>
<script type="text/javascript" src="statics/js/MSClass.js"></script>
</head>
<body>
<div class="bg1">
  <%include(_header.aspx) %>
  <div class="main">
    <div class="container">
      <div class="search"></div>
      <div style="clear:both;"> </div>
      <!--搜索结束-->
      <!--幻灯片播放，媒体聚焦-->
      <div class="box1">
        <div style="float:left; width:465px;">
          <div class="FocusPic">
            <div class="FP_NumList" id="FS_numList_01"></div>
            <div class="FP_cont" style="overflow:hidden;" id="FS_Cont_01">
              <%loop (NewsInfo) item NewsBll.GetNewsList(5,"12,13,14") %>
              <%if item.img!="" %>
              <div class="FP_pic">
                <div><a target="_blank" href="newsinfo.aspx?id=${item.id}" title="${item.title}"><img style="width:465px;height:313px;" src="${thumb(item.img,465)}" galleryimg="no" alt="${item.title}"></a></div>
                <div class="FP_tit_bg"></div>
                <div class="FP_tit_txt"><a target="_blank" href="newsinfo.aspx?id=${item.id}" title="${item.title}">${item.title}</a></div>
                <div class="FP_tit_ico"></div>
              </div>
              <%/if %>
              <%/loop %>
            </div>
          </div>
        </div>
        <div class="box1_1">
          <ul class="tab_menu">
            <li data-url="newslist.aspx?sortid=13"><span><a target="_blank">时政要闻</a></span></li>
            <li class="current" data-url="newslist.aspx?sortid=12"><span><a target="_blank">联社动态</a></span></li>
            <li data-url="newslist.aspx?sortid=14"><span><a target="_blank">行业动态</a></span></li>
            <div class="more"><span><a target="_blank" id="mtsp" href="newslist.aspx?sortid=12" style="color: #3370c0;">更多>></a></span></div>
          </ul>
          <script type="text/javascript">
            $(".tab_menu li").hover(function(){
              $("#mtsp").attr("href",$(this).attr('data-url'));
            });
          </script>
          <div class="tab_box">
            <div>
              <ul>
                <%loop (NewsInfo) item NewsBll.GetNewsList(9,12) %>
                <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,60)}</a><span><a target="_blank" style="color:#ccc;float:right;font-size:12px;">${fmdate(item.postdatetime,"yyyy-MM-dd")}</a></span></li>
                <%/loop %>
              </ul>
            </div>
            <div style="display:none">
              <ul>
                <%loop (NewsInfo) item NewsBll.GetNewsList(9,14) %>
                <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,60)}</a><span><a target="_blank" style="color:#ccc;float:right;font-size:12px;">${fmdate(item.postdatetime,"yyyy-MM-dd")}</a></span></li>
                <%/loop %>
              </ul>
            </div>
            <div style="display:none">
              <ul>
                <%loop (NewsInfo) item NewsBll.GetNewsList(9,13) %>
                <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,60)}</a><span><a target="_blank" style="color:#ccc;float:right;font-size:12px;">${fmdate(item.postdatetime,"yyyy-MM-dd")}</a></span></li>
                <%/loop %>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!--box1模块结束-->
      <!--banner开始-->
      <div class="banner">
        <div id="MarqueeDiv7" style="width:1000px;height:123px;overflow:hidden;">
          <table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
           <tr>
              <td height="123" align="center" valign="middle"><a target="_blank" title="心中有党、心中有民、心中有责、心中有戒 " href="#"><img src="statics/images/img1.jpg" width="1000" height="123" border="0" hspace="0"></a></td>
            </tr>
            <tr>
              <td height="123" align="center" valign="middle"><a target="_blank" title="" href="#"><img src="statics/images/img2.jpg" width="1000" height="123" border="0" hspace="0"></a></td>
            </tr>
            <tr>
              <td height="123" align="center" valign="middle"><a target="_blank" title="" href="#"><img src="statics/images/img3.jpg" width="1000" height="123" border="0" hspace="0"></a></td>
            </tr>
          </table>
        </div>
      </div>
    <script type="text/javascript">
    new Marquee("MarqueeDiv7",0,0.1,1000,123,20,4000,5000,123)
    </script>
    <!--banner结束-->
    <div class="boximg">
    <div class="boximg_2">
    <div class="qyzc">
    <div class="qyzc_bt" style="position:relative;"><span><a target="_blank" href="newslist.aspx?sortid=15"></a></span>
      <div class="more"></div>
    </div>
    <div class="qyzc_nr">
      <div class="box">
        <div class="img-scroll"><span class="prev"></span> <span class="next"></span>
          <div class="img-list">
            <ul>
              <%loop (NewsInfo) item NewsBll.GetNewsList(5,15) %>
              <li><a target="_blank" href="newsinfo.aspx?id=${item.id}" title="${item.title}"><img style="border:solid #cae8ff 1px" src="${thumb(item.img,300)}" alt="${item.title}"  width="220px" height="180px" /></a></li>
              <%/loop %>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<div class="box2">
  <div class="box2_1">
    <div class="box2_1_b">
      <div class="box2_1_bt"><span><a target="_blank" href="newslist.aspx?sortid=16">政策法规</a></span>
        <div class="more"> <span><a target="_blank" style="color:#3370c0;" href="newslist.aspx?sortid=16">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px;">
      <ul class="ul01">
        <%loop (NewsInfo) item NewsBll.GetNewsList(8,16) %>
        <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,48)}</a></li>
        <%/loop %>
      </ul>
      </div>
    </div>
    <div class="box2_1_b">
      <div class="box2_1_bt"><span><a target="_blank" href="newslist.aspx?sortid=3">工艺美术</a></span>
        <div class="more"> <span><a target="_blank" style="color:#3370c0;" href="newslist.aspx?sortid=3">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px;">
      <ul class="ul01">
        <%loop (NewsInfo) item NewsBll.GetNewsList(8,3) %>
        <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,48)}</a></li>
        <%/loop %>
      </ul>
      </div>
    </div>
    <div class="box2_1_b">
      <div class="box2_1_bt"><span><a target="_blank" href="newslist.aspx?sortid=4">职称改革</a></span>
        <div class="more"> <span><a target="_blank" style="color:#3370c0;" href="newslist.aspx?sortid=4">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px;">
      <ul class="ul01">
        <%loop (NewsInfo) item NewsBll.GetNewsList(8,4) %>
        <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,48)}</a></li>
        <%/loop %>
      </ul>
      </div>
    </div>
    <div class="box2_1_b">
      <div class="box2_1_bt"><span><a target="_blank" href="newslist.aspx?sortid=8">工作研究</a></span>
        <div class="more"> <span><a target="_blank" style="color:#3370c0;" href="newslist.aspx?sortid=8">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px;">
      <ul class="ul01">
        <%loop (NewsInfo) item NewsBll.GetNewsList(8,8) %>
        <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,48)}</a></li>
        <%/loop %>
      </ul>
      </div>
    </div>
    <div class="box2_1_b">
      <div class="box2_1_bt"><span><a target="_blank" href="newslist.aspx?sortid=8">直属学校</a></span>
        <div class="more"> <span><a target="_blank" style="color:#3370c0;" href="newslist.aspx?sortid=8">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px;">
      <ul class="ul01">
        <%loop (NewsInfo) item NewsBll.GetNewsList(8,8) %>
        <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,48)}</a></li>
        <%/loop %>
      </ul>
      </div>
    </div>
    <div class="box2_1_b">
      <div class="box2_1_bt"><span><a target="_blank" href="newslist.aspx?sortid=8">机关文件</a></span>
        <div class="more"> <span><a target="_blank" style="color:#3370c0;" href="newslist.aspx?sortid=8">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px;">
      <ul class="ul01">
        <%loop (NewsInfo) item NewsBll.GetNewsList(8,8) %>
        <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,48)}</a></li>
        <%/loop %>
      </ul>
      </div>
    </div>
  </div>
  <div class="box2_2">
    <div class="box2_2_b">
      <div class="box2_2_bt"> <span><a target="_blank" href="newslist.aspx?sortid=10">通知通告</a></span>
        <div class="more"> <span><a target="_blank" href="newslist.aspx?sortid=10" style="color: #FFFFFF">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px">
        <ul class="ul02">
          <%loop (NewsInfo) item NewsBll.GetNewsList(6,10) %>
          <li> <a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,36)}</a></li>
          <%/loop %>
        </ul>
      </div>
    </div>
    <div class="box2_2_b">
      <div class="box2_2_bt"> <span><a target="_blank" href="newslist.aspx?sortid=2">信息公开</a></span>
        <div class="more"> <span><a target="_blank" href="newslist.aspx?sortid=2" style="color: #FFFFFF">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px">
        <ul class="ul02">
          <%loop (NewsInfo) item NewsBll.GetNewsList(6,2) %>
          <li> <a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,36)}</a></li>
          <%/loop %>
        </ul>
      </div>
    </div>
    <div class="box2_2_b" style="overflow:hidden;">
      <div class="box2_2_bt"> <span><a target="_blank" href="newslist.aspx?sortid=17">办事指南</a></span>
        <div class="more"> <span><a target="_blank" href="newslist.aspx?sortid=17" style="color: #FFFFFF">更多&gt;&gt;</a></span></div>
      </div>
      <div  id="intro_nr" style="margin:2px 22px;">
        <ul>
          <%loop (NewsInfo) item NewsBll.GetNewsList(5,17) %>
          <%if item.img!="" %>
          <li><a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}"><img style="border:solid #cae8ff 1px" src="${item.img}" /></a></li>
          <%/if %>
          <%/loop %>
        </ul>
      </div>
    </div>
    <script type="text/javascript">
        new Marquee(
        {
            MSClass: ["intro_nr"],
            Step: 1,
            Width: 240,
            Height: 175,
            Timer: 50,
            AutoStart: true
        });
    </script>
    <div class="box2_2_b">
      <div class="box2_2_bt"> <span><a target="_blank" href="newslist.aspx?sortid=7">来信咨询</a></span>
        <div class="more"> <span><a target="_blank" href="newslist.aspx?sortid=7" style="color: #FFFFFF">更多&gt;&gt;</a></span></div>
      </div>
      <div style="margin:5px 8px">
        <ul class="ul02">
          <%loop (NewsInfo) item NewsBll.GetNewsList(6,3) %>
          <li> <a target="_blank" title="${item.title}" href="newsinfo.aspx?id=${item.id}">${substr(item.title,36)}</a></li>
          <%/loop %>
        </ul>
      </div>
    </div>
  </div>
</div>
</div>
<div class="bigicon">
  <ul>
    <li ><a target="_blank" href="http://cnlic.clii.com.cn/"><img style="border:solid #cae8ff 1px" src="statics/images/link1.gif" /></a></li>
    <li style="margin-left:10px;"><a target="_blank" href="http://www.chicoop.org/"><img style="border:solid #cae8ff 1px" src="statics/images/link2.gif" /></a></li>
    <li style="margin-left:10px;"><a target="_blank" href="http://www.cnaca.org"><img style="border:solid #cae8ff 1px" src="statics/images/link3.gif" /></a></li>
    <li style="margin-left:10px;"><a target="_blank" href="http://www.gxgxw.gov.cn/"><img src="statics/images/link4.gif" /></a></li>
    <li style="margin-left:10px;"><a target="_blank" href="http://gxeqgyls.com:8091"><img src="statics/images/link5.gif" /></a></li>
  </ul>
</div>
</div>
  <!--end-->
  <%include(_footer.aspx) %>
  <script type="text/javascript" src="statics/js/scroll.js"></script>
</div>
</body>
</html>
