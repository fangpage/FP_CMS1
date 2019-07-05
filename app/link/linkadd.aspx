<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Link.Controller.linkadd" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Link" %>
<%@ Import namespace="FP_Link.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2019-07-05 15:09:29*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加编辑友情链接</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link href=\"" + adminpath.ToString() + "css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + adminpath.ToString() + "js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"linkmanage.aspx?sortid=" + sortid.ToString() + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "|添加编辑友情链接," + rawurl.ToString() + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑友情链接</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:120px\">链接名称： </td>\r\n");
	ViewBuilder.Append("          <td height=\"25\">\r\n");
	ViewBuilder.Append("              <input style=\"width: 300px\" id=\"name\" name=\"name\" value=\"" + linkinfo.name.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:120px\">打开方式：</td>\r\n");
	ViewBuilder.Append("          <td height=\"25\">\r\n");
	ViewBuilder.Append("            <select id=\"target\" name=\"target\">\r\n");

	if (linkinfo.target=="_blank")
	{

	ViewBuilder.Append("              <option value=\"_blank\" selected=\"\">新窗口</option>\r\n");

	}
	else
	{

	ViewBuilder.Append("              <option value=\"_blank\">新窗口</option>\r\n");

	}	//end if


	if (linkinfo.target=="_parent")
	{

	ViewBuilder.Append("              <option value=\"_parent\" selected=\"\">父窗口</option>\r\n");

	}
	else
	{

	ViewBuilder.Append("              <option value=\"_parent\">父窗口</option>\r\n");

	}	//end if


	if (linkinfo.target=="_self")
	{

	ViewBuilder.Append("              <option value=\"_self\" selected=\"\">本窗口</option>\r\n");

	}
	else
	{

	ViewBuilder.Append("              <option value=\"_self\">本窗口</option>\r\n");

	}	//end if

	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:120px\">链接地址： </td>\r\n");
	ViewBuilder.Append("          <td height=\"25\">\r\n");
	ViewBuilder.Append("              <input style=\"width: 300px\" id=\"url\" name=\"url\" value=\"" + linkinfo.url.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("          <td height=\"25\"><input name=\"submit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\"></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
