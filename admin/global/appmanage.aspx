<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.appmanage" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>

<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-10-20 15:41:16*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>系统应用管理</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"../js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + plupath.ToString() + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + plupath.ToString() + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"系统应用管理," + rawpath.ToString() + "" + pagename.ToString() + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteApp(appid, appname) {\r\n");
	ViewBuilder.Append("        if (confirm(\"你确定要卸载[\" + appname + \"]该应用吗？卸载可能会导致一些应用程序无法使用。\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#appid\").val(appid);\r\n");
	ViewBuilder.Append("            $(\"#formpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function BuildApp(appid, appname) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要编译[\" + appname + \"]该应用吗？\\r\\n\\r\\n当前操作可能要运行一段时间，在此期间不要进行其它操作。\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"build\");\r\n");
	ViewBuilder.Append("            $(\"#appid\").val(appid);\r\n");
	ViewBuilder.Append("            layer.load('正在编译中…', 2);\r\n");
	ViewBuilder.Append("            $(\"#formpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function DownLoadApp(appid, appname) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要下载[\" + appname + \"]该应用吗？\\r\\n\\r\\n当前操作可能要运行一段时间，在此期间不要进行其它操作。\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"download\");\r\n");
	ViewBuilder.Append("            $(\"#appid\").val(appid);\r\n");
	ViewBuilder.Append("            $(\"#formpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function AppView(appid, appname)\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("        $.layer({\r\n");
	ViewBuilder.Append("            type: 2,\r\n");
	ViewBuilder.Append("            shade: [0],\r\n");
	ViewBuilder.Append("            fix: false,\r\n");
	ViewBuilder.Append("            title: appname,\r\n");
	ViewBuilder.Append("            maxmin: false,\r\n");
	ViewBuilder.Append("            iframe: { src: 'appview.aspx?id=' + appid },\r\n");
	ViewBuilder.Append("            area: ['500px', '460px']\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"formpost\" method=\"post\" name=\"formpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\"> \r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"appid\" id=\"appid\" value=\"\"> \r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("    <td>\r\n");
	ViewBuilder.Append("    <div class=\"newslist\">\r\n");
	ViewBuilder.Append("        <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/add.gif) 2px 6px no-repeat\"><a href=\"appset.aspx\">新建</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/install.gif) 2px 6px no-repeat\"><a href=\"appinstall.aspx\">安装</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/refresh.gif) 2px 6px no-repeat\"><a href=\"appmanage.aspx\">刷新</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/more.gif) 2px 6px no-repeat\"><a href=\"http://app.fangpage.com\" target=\"_blank\">更多应用下载</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"float:right; width:auto\"><strong>系统应用管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr><td>\r\n");
	ViewBuilder.Append("   <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  应用名称\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  安装目录\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  应用作者\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  应用版本\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td width=\"160\">\r\n");
	ViewBuilder.Append("                  操作\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(AppInfo apps in applist)
	{
	loop__id++;

	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   <a href=\"javascript:AppView(" + apps.id.ToString().Trim() + ",'" + apps.name.ToString().Trim() + "')\">" + apps.name.ToString().Trim() + "</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   " + apps.installpath.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   " + apps.author.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   V" + apps.version.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  <a href=\"appset.aspx?id=" + apps.id.ToString().Trim() + "\">配置</a>\r\n");
	ViewBuilder.Append("                  <a href=\"javascript:BuildApp(" + apps.id.ToString().Trim() + ",'" + apps.name.ToString().Trim() + "')\">编译</a>\r\n");
	ViewBuilder.Append("                  <a href=\"javascript:DownLoadApp(" + apps.id.ToString().Trim() + ",'" + apps.name.ToString().Trim() + "')\">下载</a>\r\n");
	ViewBuilder.Append("                  <a href=\"appupdate.aspx?appid=" + apps.id.ToString().Trim() + "\">更新</a>\r\n");
	ViewBuilder.Append("                  <a href=\"javascript:DeleteApp(" + apps.id.ToString().Trim() + ",'" + apps.name.ToString().Trim() + "')\">卸载</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");

	if (action=="build")
	{



	if (ispost)
	{

	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('" + msg.ToString() + "', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");

	}	//end if




	}	//end if

	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
