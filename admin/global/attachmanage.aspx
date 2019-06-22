<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.attachmanage" %>
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
	ViewBuilder.Append("<title>上传附件管理</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"../css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"../js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkdel]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"上传附件管理,global/" + pagename.ToString() + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("        <div class=\"newslist\">\r\n");
	ViewBuilder.Append("          <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("            <ul>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(../images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("              <li style=\"background: url(../images/refresh.gif) 2px 6px no-repeat\"><a href=\"attachmanage.aspx\">刷新</a> </li>\r\n");
	ViewBuilder.Append("              <li style=\"float:right; width:auto\"><strong>上传附件管理</strong></li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td colspan=\"2\">\r\n");
	ViewBuilder.Append("      <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("      <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("              <td width=\"40\"><input id=\"checkall\" name=\"checkall\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("        	  <td>文件名称</td>\r\n");
	ViewBuilder.Append("        	  <td width=\"60\">大小</td>\r\n");
	ViewBuilder.Append("              <td width=\"100\">类型</td>\r\n");
	ViewBuilder.Append("        	  <td width=\"120\">上传时间</td>\r\n");
	ViewBuilder.Append("        	  <td width=\"60\">上传者</td>\r\n");
	ViewBuilder.Append("              <td width=\"50\">阅读</td>\r\n");
	ViewBuilder.Append("              <td width=\"50\">下载</td>\r\n");
	ViewBuilder.Append("              <td width=\"50\">描述</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(AttachInfo item in attachlist)
	{
	loop__id++;

	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("              <td><input id=\"chkdel\" name=\"chkdel\" value=\"" + item.id.ToString().Trim() + "\" type=\"checkbox\"></td>\r\n");
	ViewBuilder.Append("              <td align=\"left\"><a href=\"" + item.filename.ToString().Trim() + "\" target=\"_blank\">" + item.name.ToString().Trim() + "</a></td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + FormatSize(item.filesize).ToString() + " </td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + item.filetype.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + FangPage.MVC.FPUtils.GetDate(item.updatetime,"yyyy-MM-dd HH:mm:ss") + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + item.UserInfo.realname.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + item.reads.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + item.downloads.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("              <td align=\"center\">" + item.description.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </form>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("       <td align=\"left\">共有" + pager.total.ToString().Trim() + "条记录，页次：" + pager.pageindex.ToString().Trim() + "/" + pager.pagecount.ToString().Trim() + "，" + pager.pagesize.ToString().Trim() + "条每页</td>\r\n");
	ViewBuilder.Append("       <td align=\"right\"><div class=\"pages\">" + pager.pagenum.ToString().Trim() + "</div></td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
