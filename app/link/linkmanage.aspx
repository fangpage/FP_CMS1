<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Link.Controller.linkmanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Link.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("    <title>友情链接管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/datagrid.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
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
	ViewBuilder.Append("            PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "\");\r\n");
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
	ViewBuilder.Append("                            <li style=\"background: url(" + echo(adminpath) + "statics/images/delete.gif) 2px 6px  no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + echo(adminpath) + "statics/images/add.gif) 2px 6px no-repeat\"><a href=\"linkadd.aspx?sortid=" + echo(sortid) + "\">\r\n");
	ViewBuilder.Append("                                添加</a></li>\r\n");
	ViewBuilder.Append("                            <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"linkmanage.aspx?sortid=" + echo(sortid) + "\">刷新</a> </li>\r\n");
	ViewBuilder.Append("                            <li style=\"float: right; width: auto\"><strong>" + echo(sortinfo.name) + "</strong></li>\r\n");
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
	ViewBuilder.Append("                            <input id=\"chkid\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td align=\"center\">\r\n");
	ViewBuilder.Append("                            " + echo(item.name) + "\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td align=\"center\">\r\n");
	ViewBuilder.Append("                            " + echo(item.url) + "\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <a style=\"color: #1317fc\" href=\"linkadd.aspx?id=" + echo(item.id) + "\">编辑</a>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	}//end loop
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("           </td>\r\n");
	ViewBuilder.Append("       </tr>\r\n");
	ViewBuilder.Append("      <tr>\r\n");
	ViewBuilder.Append("        <td align=\"left\">\r\n");
	ViewBuilder.Append("            共有" + echo(pager.total) + "个记录，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，" + echo(pager.pagesize) + "条每页\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        <td align=\"right\">\r\n");
	ViewBuilder.Append("            <div class=\"pages\">" + echo(pager.pagenum) + "</div>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("      </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
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
