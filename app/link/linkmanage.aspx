<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Link.Controller.linkmanage" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Link" %>
<%@ Import namespace="FP_Link.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2019-07-05 15:09:29*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("    <title>友情链接管理</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + adminpath.ToString() + "css/admin.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + adminpath.ToString() + "css/datagrid.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + adminpath.ToString() + "js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("                $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("                if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "\");\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"2\">\r\n");
	ViewBuilder.Append("                <div class=\"newslist\">\r\n");
	ViewBuilder.Append("                    <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("                        <ul>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + adminpath.ToString() + "images/delete.gif) 2px 6px  no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + adminpath.ToString() + "images/add.gif) 2px 6px no-repeat\"><a href=\"linkadd.aspx?sortid=" + sortid.ToString() + "\">\r\n");
	ViewBuilder.Append("                                添加</a></li>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + adminpath.ToString() + "images/refresh.gif) 2px 6px no-repeat\"><a href=\"linkmanage.aspx?sortid=" + sortid.ToString() + "\">刷新</a> </li>\r\n");
	ViewBuilder.Append("                            <li style=\"float: right; width: auto\"><strong>" + sortinfo.name.ToString().Trim() + "</strong></li>\r\n");
	ViewBuilder.Append("                        </ul>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"2\">\r\n");
	ViewBuilder.Append("            <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr class=\"thead\">\r\n");
	ViewBuilder.Append("                        <td width=\"40\">\r\n");
	ViewBuilder.Append("                            <input id=\"checkall\" name=\"checkall\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            链接名称\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            链接地址\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td width=\"60\">\r\n");
	ViewBuilder.Append("                            操作\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");

	loop__id=0;
	foreach(LinkInfo item in linklist)
	{
	loop__id++;

	ViewBuilder.Append("                    <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <input id=\"chkid\" name=\"chkid\" value=\"" + item.id.ToString().Trim() + "\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td align=\"center\">\r\n");
	ViewBuilder.Append("                            " + item.name.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td align=\"center\">\r\n");
	ViewBuilder.Append("                            " + item.url.ToString().Trim() + "\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <a style=\"color: #1317fc\" href=\"linkadd.aspx?id=" + item.id.ToString().Trim() + "\">编辑</a>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("           </td>\r\n");
	ViewBuilder.Append("       </tr>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td align=\"left\">\r\n");
	ViewBuilder.Append("            共有" + pager.total.ToString().Trim() + "个记录，页次：" + pager.pageindex.ToString().Trim() + "/" + pager.pagecount.ToString().Trim() + "，" + pager.pagesize.ToString().Trim() + "条每页\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td align=\"right\">\r\n");
	ViewBuilder.Append("            <div class=\"pages\">" + pager.pagenum.ToString().Trim() + "</div>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
