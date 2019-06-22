<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.appview" %>
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
	ViewBuilder.Append("<title>应用信息</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + adminpath.ToString() + "css/admin.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + adminpath.ToString() + "css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"../css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/ecmascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"../js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr>\r\n");
	ViewBuilder.Append("      <td>\r\n");
	ViewBuilder.Append("      <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   应用名称：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + appinfo.name.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   应用作者：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + appinfo.author.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   应用版本：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">V" + appinfo.version.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   安装路径：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + apppath.ToString() + "" + appinfo.installpath.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   应用主页：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">\r\n");

	if (appinfo.frontpage!="")
	{

	ViewBuilder.Append("                   <a href=\"" + webpath.ToString() + "" + appinfo.installpath.ToString().Trim() + "/" + appinfo.frontpage.ToString().Trim() + "\">" + appinfo.frontpage.ToString().Trim() + "</a>\r\n");

	}	//end if

	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("               <td width=\"100\" align=\"right\">\r\n");
	ViewBuilder.Append("                   应用简介：\r\n");
	ViewBuilder.Append("               </td>\r\n");
	ViewBuilder.Append("               <td align=\"left\">" + appinfo.notes.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("       </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("  </table>\r\n");
	ViewBuilder.Append("  </form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
