<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.cachemanage" %>
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
	ViewBuilder.Append("<title>系统缓存管理</title>\r\n");
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
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkdel]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要清空所选的缓存吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"remove\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitclear\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要清空所有的缓存吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"clear\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"系统缓存管理," + rawpath.ToString() + "" + pagename.ToString() + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function DeleteCache(cacheid) {\r\n");
	ViewBuilder.Append("        if (confirm(\"您确定要删除该缓存吗？\")) {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("            $(\"#cacheid\").val(cacheid);\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\"> \r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"cacheid\" id=\"cacheid\" value=\"\"> \r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("    <td>\r\n");
	ViewBuilder.Append("    <div class=\"newslist\">\r\n");
	ViewBuilder.Append("        <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">清空所选缓存</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/clear.gif) 2px 6px no-repeat\"><a id=\"submitclear\" href=\"#\">清空所有缓存</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"background: url(../images/refresh.gif) 2px 6px no-repeat\"><a href=\"cachemanage.aspx\">刷新</a></li>\r\n");
	ViewBuilder.Append("                <li style=\"float:right; width:auto\"><strong>系统缓存管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr><td>\r\n");
	ViewBuilder.Append("   <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("                <td width=\"40\">\r\n");
	ViewBuilder.Append("                    <input id=\"checkall\" name=\"checkall\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  缓存名称\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  缓存键值\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  过期时间\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  最近缓存时间\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  当前状态\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td width=\"60\">\r\n");
	ViewBuilder.Append("                  操作\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(CacheInfo item in cachelist)
	{
	loop__id++;

	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input id=\"chkid\" name=\"chkid\" value=\"" + item.id.ToString().Trim() + "\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   " + item.name.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   " + item.key.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");

	if (item.expires<=0)
	{

	ViewBuilder.Append("                   无限期\r\n");

	}
	else if (item.expires==0)
	{

	ViewBuilder.Append("                   依赖文件\r\n");

	}
	else
	{

	ViewBuilder.Append("                   " + item.expires.ToString().Trim() + "分钟\r\n");

	}	//end if

	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   " + FangPage.MVC.FPUtils.GetDate(item.cachedatetime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");

	if (item.status==1)
	{

	ViewBuilder.Append("                   <span style=\"color:#0094ff\">缓存中</span> \r\n");

	}
	else
	{

	ViewBuilder.Append("                   <span style=\"color:#ff0000\">已失效</span> \r\n");

	}	//end if

	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  <a href=\"javascript:DeleteCache(" + item.id.ToString().Trim() + ")\">删除</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
