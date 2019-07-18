<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.newsinfo" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYpE html pUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "sites/demo/statics/js/jquery.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "sites/demo/statics/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "sites/demo/statics/js/jQuery.imgPlayer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "sites/demo/statics/js/menu1.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<!--顶部栏-->\r\n");
	ViewBuilder.Append("<div class=\"bg1\">\r\n");
	ViewBuilder.Append("<div class=\"header\">\r\n");
	ViewBuilder.Append("<!--内容开始-->\r\n");
	ViewBuilder.Append("<div class=\"head\">\r\n");
	ViewBuilder.Append("<a href=\"http://www.gxeqgyls.com\"><img src=\"" + echo(webpath) + "sites/demo/statics/images/logo.png\"></a> \r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<!--nav-->\r\n");
	ViewBuilder.Append("<div class=\"nav\">\r\n");
	ViewBuilder.Append("    <ul>\r\n");
	ViewBuilder.Append("    <li class=\"o\"><a href=\"index.aspx\">首页</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"articleinfo.aspx?sortid=1\">联社概况</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=2\">政务公开</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"articleinfo.aspx?sortid=11\">政策法规</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=8\">工作研究</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=3\">工艺美术</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=4\">职称申报</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=5\">直属学校</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"guestbooklist.aspx?sortid=9\">交流互动</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=6\">下载中心</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<!--end nav-->\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("  <!--main-->\r\n");
	ViewBuilder.Append("  <div class=\"main\">\r\n");
	ViewBuilder.Append("    <div class=\"search\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("      <div class=\"nr\">\r\n");
	ViewBuilder.Append("        <div style=\"clear:both;\"></div>\r\n");
	ViewBuilder.Append("        <!--内容开始-->\r\n");
	ViewBuilder.Append("        <div class=\"two_box\">\r\n");
	SortInfo leftsort = SortBll.GetSortInfo(sortid);

	if (sortinfo.parentid>0)
	{
	 leftsort = SortBll.GetSortInfo(sortinfo.parentid);
	}//end if
	ViewBuilder.Append("<div class=\"leftbox\">\r\n");
	ViewBuilder.Append("    <div class=\"leftbox_bt\">\r\n");
	ViewBuilder.Append("        <li><a target=\"_blank\" href=\"#\">" + echo(leftsort.name) + "</a></li>\r\n");
	ViewBuilder.Append("    </div>\r\n");

	if (sortid==21)
	{
	ViewBuilder.Append("    <div class=\"leftbox_nr\">\r\n");
	ViewBuilder.Append("        <div class=\"left_pic\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"left_wz1\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=12\">时政要闻</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=13\">联社动态</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=14\">行业动态</a></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	}
	else if (sortid==16||sortid==3||sortid==4||sortid==8||sortid==5||sortid==4)
	{
	ViewBuilder.Append("    <div class=\"leftbox_nr\">\r\n");
	ViewBuilder.Append("        <div class=\"left_pic\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"left_wz1\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=16\">政策法规</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=3\">工艺美术</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=4\">职称改革</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">工作研究</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=5\">直属学校</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=4\">职称申报</a></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	}
	else if (sortid==9||sortid==22)
	{
	ViewBuilder.Append("    <div class=\"leftbox_nr\">\r\n");
	ViewBuilder.Append("        <div class=\"left_pic\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"left_wz1\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=9\">来信咨询</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newslist.aspx?sortid=22\">调查征集</a></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	}
	else
	{
	ViewBuilder.Append("    <div class=\"leftbox_nr\">\r\n");
	ViewBuilder.Append("        <div class=\"left_pic\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"left_wz1\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"articleinfo.aspx?sortid=18\">主要职能</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"articleinfo.aspx?sortid=19\">领导简介</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"articleinfo.aspx?sortid=20\">机构设置</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"articleinfo.aspx?sortid=21\">理事单位</a></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	}//end if
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("          <!--end-->\r\n");
	ViewBuilder.Append("          <div class=\"rightbox\">\r\n");
	ViewBuilder.Append("            <div class=\"right_top\"><a target=\"_blank\" href=\"index.aspx\">首页</a>&nbsp;>&nbsp;<a href=\"newslist.aspx?sortid=" + echo(sortid) + "\">园区动态</a> > 内容</div>\r\n");
	ViewBuilder.Append("            <div class=\"right_bt\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"nr1\">\r\n");
	ViewBuilder.Append("              <div class=\"nr1_bt\" style=\"text-align:center;width:720px;float:left;margin-top:30px;\">\r\n");
	ViewBuilder.Append("                <h2 style=\"font-size: 20px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 60px; width:600px;\">" + echo(_newsinfo.title) + "</h2>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              <div class=\"rq\"><span>来源：" + echo(_newsinfo.source) + "</span><span style=\"margin-left:20px;\">发布时间：" + echo(_newsinfo.postdatetime,"yyyy-MM-dd") + "</span><span style=\"margin-left:20px;\">点击量：<span id=\"hits\">" + echo(_newsinfo.views) + "</span></span></div>\r\n");
	ViewBuilder.Append("              <!--列表标题-->\r\n");
	ViewBuilder.Append("              <div id=\"content\" class=\"right_bottom1\" style=\"width:720px;margin-top:5px;float:left;\">\r\n");
	ViewBuilder.Append("               " + echo(_newsinfo.content) + "\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("                $(document).ready(function() {  \r\n");
	ViewBuilder.Append("                  $(\"#content img\").each(function() {  \r\n");
	ViewBuilder.Append("                  var maxWidth = 600; // 图片最大宽度 \r\n");
	ViewBuilder.Append("                  var ratio = 0;  // 缩放比例  \r\n");
	ViewBuilder.Append("                  var width = $(this).width();    // 图片实际宽度  \r\n");
	ViewBuilder.Append("                  var height = $(this).height();  // 图片实际高度 \r\n");
	ViewBuilder.Append("                   //$(this).css(\"height\", width * 3 / 4);  // 设定等比例缩放后的高度  \r\n");
	ViewBuilder.Append("                   // 检查图片是否超宽  \r\n");
	ViewBuilder.Append("                  if(width > maxWidth){  \r\n");
	ViewBuilder.Append("                    ratio = width / maxWidth;   // 计算缩放比例  \r\n");
	ViewBuilder.Append("                    $(this).css(\"width\", maxWidth); // 设定实际显示宽度  \r\n");
	ViewBuilder.Append("                    height = height / ratio;    // 计算等比例缩放后的高度   \r\n");
	ViewBuilder.Append("                    $(this).css(\"height\", height);  // 设定等比例缩放后的高度  \r\n");
	ViewBuilder.Append("                  }  \r\n");
	ViewBuilder.Append("                  if(width < 333 && maxWidth < 400){\r\n");
	ViewBuilder.Append("                    $(this).css(\"width\", '100%'); // 设定实际显示宽度  \r\n");
	ViewBuilder.Append("                  }\r\n");
	ViewBuilder.Append("                  });  \r\n");
	ViewBuilder.Append("                }); \r\n");
	ViewBuilder.Append("              </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <!--列表标题结束-->\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <!--左边标题内容结束，翻页开始-->\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <!--end-->\r\n");
	ViewBuilder.Append("<div class=\"footer\">\r\n");
	ViewBuilder.Append("    <div class=\"copyright\">\r\n");
	ViewBuilder.Append("        <div class=\"cr_left\">\r\n");
	ViewBuilder.Append("        <li><a style=\"color:#5F5F5F;\">Copyright(C) 2015 广西壮族自治区二轻城镇集体工业联合社<br>\r\n");
	ViewBuilder.Append("            网站主办：广西壮族自治区二轻城镇集体工业联合社<br>\r\n");
	ViewBuilder.Append("            网站网址：http://www.gxeqgyls.com<br>\r\n");
	ViewBuilder.Append("            后台管理：</a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"/admin/index.aspx\">后台登录</a>\r\n");
	ViewBuilder.Append("        </li>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"cr_right\">\r\n");
	ViewBuilder.Append("        <li><a style=\"color:#5F5F5F;\">地址(Add)：广西南宁市建政路31号<br>\r\n");
	ViewBuilder.Append("            电话(Tel)：0771-5612602<br>\r\n");
	ViewBuilder.Append("            传真(Fax)：0771-5626864<br>\r\n");
	ViewBuilder.Append("            </a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"http://www.miitbeian.gov.cn/\">备案号：桂ICP备09011153号</a></li>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	if(iswrite==0)
	{
	Response.Write(ViewBuilder.ToString());
	}
	else if(iswrite==1)
	{
	Hashtable hash = new Hashtable();
	hash["errcode"] = 0;
	hash["errmsg"] ="";
	hash["html"]=ViewBuilder.ToString();
	FPResponse.WriteJson(hash);
	}
}
</script>
