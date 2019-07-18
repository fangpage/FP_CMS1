<%controller(FP_News.Controller.*) %>
<%using(FP_News.Model) %>
<%using(FangPage.WMS.Model) %>
<%using(FangPage.WMS.Bll) %>
<!DOCTYpE html pUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>${pagetitle}</title>
<script type="text/javascript" src="statics/js/jquery.min.js"></script>
<link href="statics/css/index.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="statics/js/jQuery.imgPlayer.js"></script>
<script type="text/javascript" src="statics/js/menu1.js"></script>
</head>
<body>
<!--顶部栏-->
<div class="bg1">
  <%include(_header.aspx) %>
  <!--main-->
  <div class="main">
    <div class="search"></div>
    <div class="container">
      <div class="nr">
        <div style="clear:both;"></div>
        <!--内容开始-->
        <div class="two_box">
          <%include(_lefter.aspx) %>
          <!--end-->
          <div class="rightbox">
            <div class="right_top"><a target="_blank" href="index.aspx">首页</a>&nbsp;>&nbsp;<a href="newslist.aspx?sortid=${sortid}">园区动态</a> > 内容</div>
            <div class="right_bt"></div>
            <div class="nr1">
              <div class="nr1_bt" style="text-align:center;width:720px;float:left;margin-top:30px;">
                <h2 style="font-size: 20px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 60px; width:600px;">${_newsinfo.title}</h2>
              </div>
              <div class="rq"><span>来源：${_newsinfo.source}</span><span style="margin-left:20px;">发布时间：${fmdate(_newsinfo.postdatetime,"yyyy-MM-dd")}</span><span style="margin-left:20px;">点击量：<span id="hits">${_newsinfo.views}</span></span></div>
              <!--列表标题-->
              <div id="content" class="right_bottom1" style="width:720px;margin-top:5px;float:left;">
               ${_newsinfo.content}
              </div>
              <script type="text/javascript">
                $(document).ready(function() {  
                  $("#content img").each(function() {  
                  var maxWidth = 600; // 图片最大宽度 
                  var ratio = 0;  // 缩放比例  
                  var width = $(this).width();    // 图片实际宽度  
                  var height = $(this).height();  // 图片实际高度 
                   //$(this).css("height", width * 3 / 4);  // 设定等比例缩放后的高度  
                   // 检查图片是否超宽  
                  if(width > maxWidth){  
                    ratio = width / maxWidth;   // 计算缩放比例  
                    $(this).css("width", maxWidth); // 设定实际显示宽度  
                    height = height / ratio;    // 计算等比例缩放后的高度   
                    $(this).css("height", height);  // 设定等比例缩放后的高度  
                  }  
                  if(width < 333 && maxWidth < 400){
                    $(this).css("width", '100%'); // 设定实际显示宽度  
                  }
                  });  
                }); 
              </script>
            </div>
          </div>
          <!--列表标题结束-->
        </div>
      </div>
    </div>
    <!--左边标题内容结束，翻页开始-->
  </div>
  <!--end-->
  <%include(_footer.aspx) %>
</div>
</body>
</html>
