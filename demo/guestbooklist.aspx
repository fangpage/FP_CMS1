<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_GuestBook.Controller.guestbooklist" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_GuestBook" %>
<%@ Import namespace="FP_GuestBook.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYpE html pUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">  \r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
	ViewBuilder.Append("<title>来信咨询 - " + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "sites/demo/statics/js/jquery.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "sites/demo/statics/css/index.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "sites/demo/statics/css/form_1.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "sites/demo/statics/js/formvalidator.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".comment_title{\r\n");
	ViewBuilder.Append("   width:700px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".r_b1_title{\r\n");
	ViewBuilder.Append("   width:700px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".r_b1_nr{\r\n");
	ViewBuilder.Append("   width:700px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".r_reply{\r\n");
	ViewBuilder.Append("   width:700px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".r_b1{\r\n");
	ViewBuilder.Append("   width:700px;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".ib, .ib-a a {\r\n");
	ViewBuilder.Append("display: inline-block;\r\n");
	ViewBuilder.Append("zoom: 1;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append(".rt {\r\n");
	ViewBuilder.Append("  float: right;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
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
	ViewBuilder.Append("    <div class=\"container\">\r\n");
	ViewBuilder.Append("      <div class=\"lindnav\"></div>\r\n");
	ViewBuilder.Append("      <div class=\"nr\">\r\n");
	ViewBuilder.Append("        <div style=\"clear:both;\"> </div>\r\n");
	ViewBuilder.Append("        <!--内容开始-->\r\n");
	ViewBuilder.Append("        <div class=\"2box\">\r\n");
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
	ViewBuilder.Append("            <div class=\"title_attention\"><p>网上咨询</p></div>\r\n");
	ViewBuilder.Append("            <!--列表标题-->\r\n");
	ViewBuilder.Append("            <!--填表开始-->\r\n");
	ViewBuilder.Append("            <div class=\"right_bottom\">\r\n");
	ViewBuilder.Append("              <div class=\"apply mt5\">\r\n");
	ViewBuilder.Append("                <p class=\"red_text\"> </p>\r\n");
	ViewBuilder.Append("                <form action=\"liuyanpost.aspx?sortid=" + echo(sortid) + "\" method=\"post\" name=\"myform\" id=\"myform\">\r\n");
	ViewBuilder.Append("                  <input type=\"hidden\" name=\"typeid\" id=\"typeid\" value=\"72\">\r\n");
	ViewBuilder.Append("                  <input type=\"hidden\" name=\"page\" id=\"page\" value=\"\">\r\n");
	ViewBuilder.Append("                  <table cellspacing=\"10\">\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"apply_title\"><strong>姓&nbsp;名：</strong></td>\r\n");
	ViewBuilder.Append("                      <td><input id=\"name\" name=\"name\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"apply_title\"><strong>电话号码：</strong></td>\r\n");
	ViewBuilder.Append("                      <td><input id=\"phone\" name=\"phone\" size=\"30\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"apply_title\"><strong>电子邮箱：</strong></td>\r\n");
	ViewBuilder.Append("                      <td><input id=\"email\" name=\"email\" size=\"30\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                    </tr>                  \r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"apply_title\"><strong>标&nbsp;题：</strong></td>\r\n");
	ViewBuilder.Append("                      <td><input id=\"title\" name=\"title\" size=\"60\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"apply_title\"><strong>内&nbsp;容：</strong></td>\r\n");
	ViewBuilder.Append("                      <td><textarea id=\"content\" name=\"content\" cols=\"53\" rows=\"5\"></textarea></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"apply_title\"></td>\r\n");
	ViewBuilder.Append("                      <td align=\"center\"><input type=\"submit\" value=\"\" name=\"dosubmit\" class=\"button\" style=\"background:url(" + echo(webpath) + "sites/demo/statics/images/ok.png); width:80px;height:30px;border:none;cursor:pointer;\">\r\n");
	ViewBuilder.Append("                        <input type=\"reset\" value=\"\" name=\"reset\" class=\"button\" style=\"background:url(" + echo(webpath) + "sites/demo/statics/images/again.png);width:80px;height:30px;border:none;cursor:pointer;\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                  </table>\r\n");
	ViewBuilder.Append("                </form>\r\n");
	ViewBuilder.Append("                <p class=\"mb30\">注：请认真填写以上信息！</p>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"reply\">\r\n");
	ViewBuilder.Append("              <div class=\"comment_title\"><span>全部留言</span></div>\r\n");
	ViewBuilder.Append("              <div class=\"reply_box\">\r\n");
	ViewBuilder.Append("                <!--有回复留言-->\r\n");

	loop__id=0;
	foreach(GuestBookInfo item in _guestbooklist)
	{
	loop__id++;
	ViewBuilder.Append("                  <div class=\"r_b1\">\r\n");
	ViewBuilder.Append("                    <div class=\"r_b1_title\"><span style=\"color:#06c;\">" + echo(item.name) + "</span><span>|</span><span>发表于2015-09-29 11:30:59</span></div>\r\n");
	ViewBuilder.Append("                    <div class=\"r_b1_title\">\r\n");
	ViewBuilder.Append("                      <span style=\"font-weight:bold;color:#333;\">标题</span><span style=\"color:#333;\">" + echo(item.title) + "</span></div>\r\n");
	ViewBuilder.Append("                    <div class=\"r_b1_nr\">\r\n");
	ViewBuilder.Append("                    <p>" + echo(item.content) + "</p>\r\n");
	ViewBuilder.Append("                    </div>\r\n");

	if (item.reply!="")
	{
	ViewBuilder.Append("                    <!--回复开始-->\r\n");
	ViewBuilder.Append("                    <div class=\"r_reply\">\r\n");
	ViewBuilder.Append("                    <p>回复： " + echo(item.reply) + "</p>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <!--回复结束-->\r\n");
	}//end if
	ViewBuilder.Append("                  </div>\r\n");
	}//end loop
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>  \r\n");
	ViewBuilder.Append("            <div class=\"clear\"></div>\r\n");
	ViewBuilder.Append("            <div class=\"pages\">\r\n");
	ViewBuilder.Append("              <div class=\"pagelist\"> <a class=\"a1\">共有" + echo(pager.total) + "条,页数" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "</a> <a href=\"?sortid=" + echo(sortid) + "&pageindex=" + echo(pager.prepage) + "\" class=\"a1\">上一页</a> <a href=\"?sortid=" + echo(sortid) + "&pageindex=" + echo(pager.nextpage) + "\" class=\"a1\">下一页</a>\r\n");
	ViewBuilder.Append("                <input class=\"t\" id=\"page\">\r\n");
	ViewBuilder.Append("                <input class=\"b\" type=\"button\" onclick=\"clicke(" + echo(sortid) + ")\">\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("                function clicke(catid) {\r\n");
	ViewBuilder.Append("                    var t_page = document.getElementById(\"page\").value;\r\n");
	ViewBuilder.Append("                    if (t_page != \"\" && t_page <= items && t_page >= 1) {\r\n");
	ViewBuilder.Append("                        var url = \"guestbooklist.aspx?sortid=\" + catid + \"&pageindex=\" + document.getElementById(\"page\").value;\r\n");
	ViewBuilder.Append("                        window.location.href = url;\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    else {\r\n");
	ViewBuilder.Append("                        alert(\"请输入正确的页数\");\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $.formValidator.initConfig({ autotip: true, formid: \"myform\", onerror: function (msg) { } });\r\n");
	ViewBuilder.Append("        $(\"#name\").formValidator({ onshow: \"请输入姓名\", onfocus: \"请输入姓名\" }).inputValidator({ min: 4, max: 10, onerror: \"姓名应该为2-3个汉字\" }).regexValidator({ regexp: \"ps_username\", datatype: \"enum\", onerror: \"姓名格式错误\" });\r\n");
	ViewBuilder.Append("        $(\"#phone\").formValidator({ onshow: \"请输入联系电话\", onfocus: \"请输入联系电话\", oncorrect: \"电话格式正确\" }).inputValidator({ min: 8, max: 13, onerror: \"电话号码应该为8-13为之间\" }).regexValidator({ regexp: \"^[0-9-]{6,13}$\", onerror: \"请填写正确的电话号码\" });\r\n");
	ViewBuilder.Append("        $(\"#title\").formValidator({ onshow: \"请输入标题\", onfocus: \"请输入标题\" }).inputValidator({ min: 4, max: 255, onerror: \"请输入标题\" });\r\n");
	ViewBuilder.Append("        $(\"#content\").formValidator({ onshow: \"请输入内容\", onfocus: \"请输入内容\" }).inputValidator({ min: 4, max: 99999, onerror: \"请输入内容\" });\r\n");
	ViewBuilder.Append("        $(\"#email\").formValidator({ onshow: \"请输入邮箱地址\", onfocus: \"请输入邮箱地址\", oncorrect: \"邮箱地址格式正确\" }).inputValidator({ min: 5, onerror: \"邮箱地址错误\" }).regexValidator({ regexp: \"email\", datatype: \"enum\", onerror: \"请填写正确的邮箱地址\" });\r\n");
	ViewBuilder.Append("        $(\"#address\").formValidator({ onshow: \"请输入内容\", onfocus: \"请输入内容\" }).inputValidator({ min: 4, max: 999, onerror: \"请输入内容\" });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
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
