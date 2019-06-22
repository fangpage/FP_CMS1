<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.newsmanage" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-11-03 09:41:13*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>视频管理</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + adminpath.ToString() + "css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + adminpath.ToString() + "css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + adminpath.ToString() + "js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "\");\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + adminpath.ToString() + "images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + adminpath.ToString() + "images/add.gif) 2px 6px no-repeat\"><a href=\"mediaadd.aspx?sortid=" + sortid.ToString() + "&typeid=" + typeid.ToString() + "\">添加</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(" + adminpath.ToString() + "images/refresh.gif) 2px 6px no-repeat\"><a href=\"mediamanage.aspx?sortid=" + sortid.ToString() + "&typeid=" + typeid.ToString() + "\">刷新</a> </li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>" + sortinfo.name.ToString().Trim() + "</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td>视频标题</td>\r\n");
	ViewBuilder.Append("              <td width=\"100\">所属栏目</td>\r\n");
	ViewBuilder.Append("              <td width=\"120\">发布时间</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">发布者</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">浏览数</td>\r\n");
	ViewBuilder.Append("              <td width=\"40\">状态</td>\r\n");
	ViewBuilder.Append("              <td width=\"60\">操作</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(NewsInfo news in newslist)
	{
	loop__id++;

	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkid\" name=\"chkid\" value=\"" + news.id.ToString().Trim() + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\">\r\n");
	ViewBuilder.Append("              " + news.title.ToString().Trim() + "" + news.subtitle.ToString().Trim() + "\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + news.SortInfo.name.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + FangPage.MVC.FPUtils.GetDate(news.postdatetime,"yyyy-MM-dd HH:mm:dd") + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + news.UserInfo.username.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + news.views.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">\r\n");

	if (news.status==1)
	{

	ViewBuilder.Append("              <img src=\"images/state1.gif\" width=\"16\" height=\"14\">\r\n");

	}
	else
	{

	ViewBuilder.Append("              <img src=\"images/state0.gif\" width=\"14\" height=\"14\">\r\n");

	}	//end if

	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("              <td><a style=\"color: #1317fc\" href=\"mediaadd.aspx?id=" + news.id.ToString().Trim() + "\">编辑</a></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + pager.total.ToString().Trim() + "个视频，页次：" + pager.pageindex.ToString().Trim() + "/" + pager.pagecount.ToString().Trim() + "，" + pager.pagesize.ToString().Trim() + "条每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + pager.pagenum.ToString().Trim() + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
