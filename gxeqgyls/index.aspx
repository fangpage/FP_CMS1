<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.MVC.FPController" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>

<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-09-30 14:48:42*/
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/common.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/MSClass.js\"></");
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
	ViewBuilder.Append("    <li> <a href=\"articleinfo.aspx?sortid=11\">政策法规</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=8\">工作研究</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=3\">工艺美术</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=4\">职称申报</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=5\">直属学校</a> </li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=9\">交流互动</a></li>\r\n");
	ViewBuilder.Append("    <li> <a href=\"newslist.aspx?sortid=6\">下载中心</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<!--end nav-->\r\n");
	ViewBuilder.Append("</div>\r\n");


	ViewBuilder.Append("  <div class=\"main\">\r\n");
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("      <div class=\"search\"></div>\r\n");
	ViewBuilder.Append("      <div style=\"clear:both;\"> </div>\r\n");
	ViewBuilder.Append("      <!--搜索结束-->\r\n");
	ViewBuilder.Append("      <!--幻灯片播放，媒体聚焦-->\r\n");
	ViewBuilder.Append("      <div class=\"box1\">\r\n");
	ViewBuilder.Append("        <div style=\"float:left; width:465px;\">\r\n");
	ViewBuilder.Append("          <div class=\"FocusPic\">\r\n");
	ViewBuilder.Append("            <div class=\"FP_NumList\" id=\"FS_numList_01\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"FP_cont\" style=\"overflow:hidden;\" id=\"FS_Cont_01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(5,"12,13,14"))
	{
	loop__id++;


	if (item.img!="")
	{

	ViewBuilder.Append("              <div class=\"FP_pic\">\r\n");
	ViewBuilder.Append("                <div><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\"><img style=\"width:465px;height:313px;\" src=\"" + FangPage.MVC.FPThumb.GetThumbnail(item.img,465)+ "\" galleryimg=\"no\" alt=\"" + item.title.ToString().Trim() + "\"></a></div>\r\n");
	ViewBuilder.Append("                <div class=\"FP_tit_bg\"></div>\r\n");
	ViewBuilder.Append("                <div class=\"FP_tit_txt\"><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\">" + item.title.ToString().Trim() + "</a></div>\r\n");
	ViewBuilder.Append("                <div class=\"FP_tit_ico\"></div>\r\n");
	ViewBuilder.Append("              </div>\r\n");

	}	//end if


	}	//end loop

	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"box1_1\">\r\n");
	ViewBuilder.Append("          <ul class=\"tab_menu\">\r\n");
	ViewBuilder.Append("            <li data-url=\"newslist.aspx?sortid=13\"><span><a target=\"_blank\">时政要闻</a></span></li>\r\n");
	ViewBuilder.Append("            <li class=\"current\" data-url=\"newslist.aspx?sortid=12\"><span><a target=\"_blank\">联社动态</a></span></li>\r\n");
	ViewBuilder.Append("            <li data-url=\"newslist.aspx?sortid=14\"><span><a target=\"_blank\">行业动态</a></span></li>\r\n");
	ViewBuilder.Append("            <div class=\"more\"><span><a target=\"_blank\" id=\"mtsp\" href=\"newslist.aspx?sortid=12\" style=\"color: #3370c0;\">更多>></a></span></div>\r\n");
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("          <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("            $(\".tab_menu li\").hover(function(){\r\n");
	ViewBuilder.Append("              $(\"#mtsp\").attr(\"href\",$(this).attr('data-url'));\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("          </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("          <div class=\"tab_box\">\r\n");
	ViewBuilder.Append("            <div>\r\n");
	ViewBuilder.Append("              <ul>\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(9,12))
	{
	loop__id++;

	ViewBuilder.Append("                <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,60)+ "</a><span><a target=\"_blank\" style=\"color:#ccc;float:right;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</a></span></li>\r\n");

	}	//end loop

	ViewBuilder.Append("              </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div style=\"display:none\">\r\n");
	ViewBuilder.Append("              <ul>\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(9,14))
	{
	loop__id++;

	ViewBuilder.Append("                <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,60)+ "</a><span><a target=\"_blank\" style=\"color:#ccc;float:right;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</a></span></li>\r\n");

	}	//end loop

	ViewBuilder.Append("              </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div style=\"display:none\">\r\n");
	ViewBuilder.Append("              <ul>\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(9,13))
	{
	loop__id++;

	ViewBuilder.Append("                <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,60)+ "</a><span><a target=\"_blank\" style=\"color:#ccc;float:right;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</a></span></li>\r\n");

	}	//end loop

	ViewBuilder.Append("              </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <!--box1模块结束-->\r\n");
	ViewBuilder.Append("      <!--banner开始-->\r\n");
	ViewBuilder.Append("      <div class=\"banner\">\r\n");
	ViewBuilder.Append("        <div id=\"MarqueeDiv7\" style=\"width:1000px;height:123px;overflow:hidden;\">\r\n");
	ViewBuilder.Append("          <table width=\"1000\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n");
	ViewBuilder.Append("           <tr>\r\n");
	ViewBuilder.Append("              <td height=\"123\" align=\"center\" valign=\"middle\"><a target=\"_blank\" title=\"心中有党、心中有民、心中有责、心中有戒 \" href=\"#\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/img1.jpg\" width=\"1000\" height=\"123\" border=\"0\" hspace=\"0\"></a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td height=\"123\" align=\"center\" valign=\"middle\"><a target=\"_blank\" title=\"\" href=\"#\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/img2.jpg\" width=\"1000\" height=\"123\" border=\"0\" hspace=\"0\"></a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td height=\"123\" align=\"center\" valign=\"middle\"><a target=\"_blank\" title=\"\" href=\"#\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/img3.jpg\" width=\"1000\" height=\"123\" border=\"0\" hspace=\"0\"></a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    new Marquee(\"MarqueeDiv7\",0,0.1,1000,123,20,4000,5000,123)\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <!--banner结束-->\r\n");
	ViewBuilder.Append("    <div class=\"boximg\">\r\n");
	ViewBuilder.Append("    <div class=\"boximg_2\">\r\n");
	ViewBuilder.Append("    <div class=\"qyzc\">\r\n");
	ViewBuilder.Append("    <div class=\"qyzc_bt\" style=\"position:relative;\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=15\"></a></span>\r\n");
	ViewBuilder.Append("      <div class=\"more\"></div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"qyzc_nr\">\r\n");
	ViewBuilder.Append("      <div class=\"box\">\r\n");
	ViewBuilder.Append("        <div class=\"img-scroll\"><span class=\"prev\"></span> <span class=\"next\"></span>\r\n");
	ViewBuilder.Append("          <div class=\"img-list\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(5,15))
	{
	loop__id++;

	ViewBuilder.Append("              <li><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\"><img style=\"border:solid #cae8ff 1px\" src=\"" + FangPage.MVC.FPThumb.GetThumbnail(item.img,300)+ "\" alt=\"" + item.title.ToString().Trim() + "\" width=\"220px\" height=\"180px\"></a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"box2\">\r\n");
	ViewBuilder.Append("  <div class=\"box2_1\">\r\n");
	ViewBuilder.Append("    <div class=\"box2_1_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=16\">政策法规</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=16\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"ul01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,16))
	{
	loop__id++;

	ViewBuilder.Append("        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_1_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=3\">工艺美术</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=3\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"ul01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,3))
	{
	loop__id++;

	ViewBuilder.Append("        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_1_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=4\">职称改革</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=4\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"ul01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,4))
	{
	loop__id++;

	ViewBuilder.Append("        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_1_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">工作研究</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=8\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"ul01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,8))
	{
	loop__id++;

	ViewBuilder.Append("        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_1_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">直属学校</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=8\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"ul01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,8))
	{
	loop__id++;

	ViewBuilder.Append("        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_1_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">机关文件</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=8\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"ul01\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,8))
	{
	loop__id++;

	ViewBuilder.Append("        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div class=\"box2_2\">\r\n");
	ViewBuilder.Append("    <div class=\"box2_2_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=10\">通知通告</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=10\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px\">\r\n");
	ViewBuilder.Append("        <ul class=\"ul02\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(6,10))
	{
	loop__id++;

	ViewBuilder.Append("          <li> <a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,36)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_2_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=2\">信息公开</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=2\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px\">\r\n");
	ViewBuilder.Append("        <ul class=\"ul02\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(6,2))
	{
	loop__id++;

	ViewBuilder.Append("          <li> <a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,36)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"box2_2_b\" style=\"overflow:hidden;\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=17\">办事指南</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=17\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div id=\"intro_nr\" style=\"margin:2px 22px;\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(5,17))
	{
	loop__id++;


	if (item.img!="")
	{

	ViewBuilder.Append("          <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\"><img style=\"border:solid #cae8ff 1px\" src=\"" + item.img.ToString().Trim() + "\"></a></li>\r\n");

	}	//end if


	}	//end loop

	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        new Marquee(\r\n");
	ViewBuilder.Append("        {\r\n");
	ViewBuilder.Append("            MSClass: [\"intro_nr\"],\r\n");
	ViewBuilder.Append("            Step: 1,\r\n");
	ViewBuilder.Append("            Width: 240,\r\n");
	ViewBuilder.Append("            Height: 175,\r\n");
	ViewBuilder.Append("            Timer: 50,\r\n");
	ViewBuilder.Append("            AutoStart: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <div class=\"box2_2_b\">\r\n");
	ViewBuilder.Append("      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=7\">来信咨询</a></span>\r\n");
	ViewBuilder.Append("        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=7\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div style=\"margin:5px 8px\">\r\n");
	ViewBuilder.Append("        <ul class=\"ul02\">\r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(6,3))
	{
	loop__id++;

	ViewBuilder.Append("          <li> <a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,36)+ "</a></li>\r\n");

	}	//end loop

	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"bigicon\">\r\n");
	ViewBuilder.Append("  <ul>\r\n");
	ViewBuilder.Append("    <li><a target=\"_blank\" href=\"http://cnlic.clii.com.cn/\"><img style=\"border:solid #cae8ff 1px\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link1.gif\"></a></li>\r\n");
	ViewBuilder.Append("    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://www.chicoop.org/\"><img style=\"border:solid #cae8ff 1px\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link2.gif\"></a></li>\r\n");
	ViewBuilder.Append("    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://www.cnaca.org\"><img style=\"border:solid #cae8ff 1px\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link3.gif\"></a></li>\r\n");
	ViewBuilder.Append("    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://www.gxgxw.gov.cn/\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link4.gif\"></a></li>\r\n");
	ViewBuilder.Append("    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://gxeqgyls.com:8091\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link5.gif\"></a></li>\r\n");
	ViewBuilder.Append("  </ul>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("  <!--end-->\r\n");

	ViewBuilder.Append("<div class=\"footer\">\r\n");
	ViewBuilder.Append("    <div class=\"copyright\">\r\n");
	ViewBuilder.Append("        <div class=\"cr_left\">\r\n");
	ViewBuilder.Append("        <li><a style=\"color:#5F5F5F;\">Copyright(C) 2015 广西壮族自治区二轻城镇集体工业联合社<br>\r\n");
	ViewBuilder.Append("            网站主办：广西壮族自治区二轻城镇集体工业联合社<br>\r\n");
	ViewBuilder.Append("            网站网址：http://www.gxeqgyls.com<br>\r\n");
	ViewBuilder.Append("            后台管理：</a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"/admin/\">后台登录</a>\r\n");
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


	ViewBuilder.Append("  <script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/scroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
