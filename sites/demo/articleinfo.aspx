<%controller(FP_News.Controller.*) %>
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
</head>
<body>
<div class="bg1">
  <%include(_header.aspx) %>
  <!--main-->
  <div class="main">
    <div class="container">
      <div class="search"></div>
      <div class="nr">
        <div style="clear:both;"> </div>
        <!--内容开始-->
        <div class="two_box" style="position:relative;overflow:hidden;">
          <%include(_lefter.aspx) %>
          <!--end-->
          <div class="rightbox">
            <div class="right_top"> <a href="index.aspx">首页</a>&nbsp;>&nbsp;<a href="articleinfo.aspx?sortid=${sortid}">${sortinfo.name}</a> > 内容</div>
            <div class="right_bt"></div>
            <!--列表标题-->
            <div class="right_bottom1" style="overflow:hidden;margin-top: 20px;">
              ${_articleinfo.content}
            </div>
          </div>
          <!--列表标题结束-->
        </div>
      </div>
    </div>
    <!--右边标题内容结束，翻页开始-->
    <script type="text/javascript" src="statics/js/ad.js"></script>
  </div>
  <!--end-->
  <%include(_footer.aspx) %>
</div>
</body>
</html>
