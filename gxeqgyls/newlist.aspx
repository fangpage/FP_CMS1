<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.newlist" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-09-24 17:56:42*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYpE html pUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
	ViewBuilder.Append("<title>" + pagetitle.ToString() + "</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/jquery.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + webpath.ToString() + "sites/gxeqgyls/statics/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/jQuery.imgPlayer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div class=\"bg1\">\r\n");

	ViewBuilder.Append("<div class=\"header\">\r\n");
	ViewBuilder.Append("<!--内容开始-->\r\n");
	ViewBuilder.Append("<div class=\"head\">\r\n");
	ViewBuilder.Append("<a href=\"http://www.gxeqgyls.com\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/logo.png\"></a> \r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<!--nav-->\r\n");
	ViewBuilder.Append("<div class=\"nav\">\r\n");
	ViewBuilder.Append("    <ul>\r\n");
	ViewBuilder.Append("    <li class=\"o\"><a href=\"index.aspx\">首页</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"articleinfo.aspx?sortid=1\">联社概况</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">政务公开</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">工艺美术</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">职称申报</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">直属学校</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">下载中心</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">交流互动</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newlist.aspx?sortid=2\">工作研究</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"articleinfo.aspx?sortid=11\">联系我们</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<!--end nav-->\r\n");
	ViewBuilder.Append("</div>\r\n");


	ViewBuilder.Append("  <!--main-->\r\n");
	ViewBuilder.Append("  <div class=\"main\">\r\n");
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("      <div class=\"search\"></div>\r\n");
	ViewBuilder.Append("      <div class=\"nr\">\r\n");
	ViewBuilder.Append("        <div style=\"clear:both;\"> </div>\r\n");
	ViewBuilder.Append("        <!--内容开始-->\r\n");
	ViewBuilder.Append("        <div class=\"2box\">\r\n");

	ViewBuilder.Append("<div class=\"leftbox\">\r\n");
	ViewBuilder.Append("    <div class=\"leftbox_bt\">\r\n");
	ViewBuilder.Append("        <li><a target=\"_blank\" href=\"http://www.nnda.gov.cn/list-2-1.html\">开发区资讯</a></li>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"leftbox_nr\">\r\n");
	ViewBuilder.Append("        <div class=\"left_pic\"></div>\r\n");
	ViewBuilder.Append("        <div class=\"left_wz1\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"list-14-1.html\">园区动态</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"http://www.nnda.gov.cn/list-15-1.html\">园区公告</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"http://www.nnda.gov.cn/list-16-1.html\">新闻中心</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" style=\"color: #06C; margin-left: 40px;\" href=\"http://www.nnda.gov.cn/list-18-1.html\">媒体聚焦</a></li>\r\n");
	ViewBuilder.Append("                <li><a target=\"_blank\" style=\"color: #06C; margin-left: 40px;\" href=\"http://www.nnda.gov.cn/list-17-1.html\">视频展播</a></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");


	ViewBuilder.Append("          <!--end-->\r\n");
	ViewBuilder.Append("          <div class=\"rightbox\">\r\n");
	ViewBuilder.Append("            <div class=\"right_top\"> <a target=\"_blank\" href=\"index.aspx\">首页</a>&nbsp;>&nbsp;<a href=\"newslist.aspx?sortid=" + sortid.ToString() + "\">开发区资讯</a> > 列表</div>\r\n");
	ViewBuilder.Append("            <div class=\"right_bt\"></div>\r\n");
	ViewBuilder.Append("            <!--列表标题-->\r\n");
	ViewBuilder.Append("            <div class=\"right_bottom\">\r\n");
	ViewBuilder.Append("              <ul>\r\n");

	loop__id=0;
	foreach(NewsInfo item in newslist)
	{
	loop__id++;

	ViewBuilder.Append("                <li><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\">" + item.title.ToString().Trim() + "</a><span style=\"float:right;color:#ccc;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</span></li>\r\n");

	}	//end loop

	ViewBuilder.Append("              </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"clear\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"pages\">\r\n");
	ViewBuilder.Append("              <div class=\"pagelist\"> <a class=\"a1\">1069条</a> <a href=\"\" class=\"a1\">上一页</a> <span>1</span> <a href=\"http://www.nnda.gov.cn/list-14-2.html\">2</a> <a href=\"http://www.nnda.gov.cn/list-14-3.html\">3</a> <a href=\"http://www.nnda.gov.cn/list-14-4.html\">4</a> <a href=\"http://www.nnda.gov.cn/list-14-5.html\">5</a> <a href=\"http://www.nnda.gov.cn/list-14-6.html\">6</a> <a href=\"http://www.nnda.gov.cn/list-14-7.html\">7</a> <a href=\"http://www.nnda.gov.cn/list-14-8.html\">8</a> <a href=\"http://www.nnda.gov.cn/list-14-9.html\">9</a> <a href=\"http://www.nnda.gov.cn/list-14-10.html\">10</a> <a href=\"http://www.nnda.gov.cn/list-14-54.html\">54</a> <a href=\"http://www.nnda.gov.cn/list-14-2.html\" class=\"a1\">下一页</a>\r\n");
	ViewBuilder.Append("                <input class=\"t\" id=\"page\">\r\n");
	ViewBuilder.Append("                <input class=\"b\" type=\"button\" onclick=\"clicke(54,14)\">\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <!--右边标题内容结束，翻页开始-->\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/floating_adv.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <!--end-->\r\n");

	ViewBuilder.Append("<div class=\"footer\">\r\n");
	ViewBuilder.Append("    <div class=\"copyright\">\r\n");
	ViewBuilder.Append("        <div class=\"cr_left\">\r\n");
	ViewBuilder.Append("        <li><a style=\"color:#5F5F5F;\">Copyright(C) 2015 广西壮族自治区二轻城镇集体工业联合社<br>\r\n");
	ViewBuilder.Append("            网站主办：广西壮族自治区二轻城镇集体工业联合社<br>\r\n");
	ViewBuilder.Append("            网站承办：广西壮族自治区二轻城镇集体工业联合社信息中心<br>\r\n");
	ViewBuilder.Append("            技术支持：</a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"http://www.fangpage.com/\">方配软件</a>\r\n");
	ViewBuilder.Append("        </li>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"cr_right\">\r\n");
	ViewBuilder.Append("        <li><a style=\"color:#5F5F5F;\">地址(Add)：广西南宁市建政路31号<br>\r\n");
	ViewBuilder.Append("            电话(Tel)：0771-5623838<br>\r\n");
	ViewBuilder.Append("            传真(Fax)：0771-5623838<br>\r\n");
	ViewBuilder.Append("            </a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"http://www.miitbeian.gov.cn/\">备案号：桂ICP备09011153号</a></li>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");


	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("  function clicke(items,catid){\r\n");
	ViewBuilder.Append("    var t_page = document.getElementById(\"page\").value;\r\n");
	ViewBuilder.Append("    if(t_page != \"\" && t_page<=items && t_page>=1)\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("      var url = \"newslist.aspx?sortid=\"+catid+\"-\"+document.getElementById(\"page\").value;\r\n");
	ViewBuilder.Append("      window.location.href = url;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    else{\r\n");
	ViewBuilder.Append("      alert(\"请输入正确的页数\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("  }   \r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
