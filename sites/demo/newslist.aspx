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
        <div class="2box">
          <%include(_lefter.aspx) %>
          <!--end-->
          <div class="rightbox">
            <div class="right_top"> <a target="_blank" href="index.aspx">首页</a>&nbsp;>&nbsp;<a href="newslist.aspx?sortid=${sortid}">${sortinfo.name}</a> > 列表</div>
            <div class="right_bt"></div>
            <!--列表标题-->
            <div class="right_bottom">
              <ul>
                <%loop (NewsInfo) item _newslist%>
                <li><a target="_blank" href="newsinfo.aspx?id=${item.id}" title="${item.title}">${item.title}</a><span style="float:right;color:#ccc;font-size:12px;">${fmdate(item.postdatetime,"yyyy-MM-dd")}</span></li>
                <%/loop %>
              </ul>
            </div>
            <div class="clear"></div>
            <div class="pages">
              <div class="pagelist"> <a class="a1">共有${pager.total}条</a> <a href="?sortid=${sortid}&pageindex=${pager.prepage}" class="a1">上一页</a> <a href="?sortid=${sortid}&pageindex=${pager.nextpage}" class="a1">下一页</a>
                <input class="t" id="page">
                <input class="b" type="button" onclick="clicke(${sortid})"/>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--右边标题内容结束，翻页开始-->
    </div>
  </div>
  <!--end-->
  <%include(_footer.aspx) %>
</div>
<script type="text/javascript">
  function clicke(catid){
    var t_page = document.getElementById("page").value;
    if(t_page != "" && t_page<=items && t_page>=1)
    {
      var url = "newslist.aspx?sortid="+catid+"&pageindex="+document.getElementById("page").value;
      window.location.href = url;
    }
    else{
      alert("请输入正确的页数");
    }
  }   
</script>
</body>
</html>
