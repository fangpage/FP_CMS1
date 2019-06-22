<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.articleinfo" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-09-24 22:39:40*/
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
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=2\">政务公开</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=3\">工艺美术</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=4\">职称申报</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=5\">直属学校</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=6\">下载中心</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=7\">交流互动</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=8\">工作研究</a></li>\r\n");
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
	ViewBuilder.Append("        <div class=\"two_box\" style=\"position:relative;overflow:hidden;\">\r\n");

	ViewBuilder.Append("<div class=\"leftbox\">\r\n");
	ViewBuilder.Append("    <div class=\"leftbox_bt\">\r\n");
	ViewBuilder.Append("        <li><a target=\"_blank\" href=\"#\">联社资讯</a></li>\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
	ViewBuilder.Append("</div>\r\n");


	ViewBuilder.Append("          <!--end-->\r\n");
	ViewBuilder.Append("          <div class=\"rightbox\">\r\n");
	ViewBuilder.Append("            <div class=\"right_top\"> <a href=\"index.aspx\">首页</a>&nbsp;>&nbsp;<a href=\"articleinfo.aspx?sortid=" + sortid.ToString() + "\">" + sortinfo.name.ToString().Trim() + "</a> > 内容</div>\r\n");
	ViewBuilder.Append("            <div class=\"right_bt\"></div>\r\n");
	ViewBuilder.Append("            <!--列表标题-->\r\n");
	ViewBuilder.Append("            <div class=\"right_bottom1\" style=\"overflow:hidden;margin-top: 20px;\">\r\n");
	ViewBuilder.Append("              " + _articleinfo.content.ToString().Trim() + "\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <!--列表标题结束-->\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <!--右边标题内容结束，翻页开始-->\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/ad.js\"></");
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
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
