<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Controller.logout" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-10-20 15:41:15*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>" + siteconfig.name.ToString().Trim() + "退出系统</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + plupath.ToString() + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("    <script src=\"" + plupath.ToString() + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");

	if (action=="1")
	{

	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('" + msg.ToString() + "', 0, 1);\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	}
	else
	{

	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('退出失败', 0, 1);\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	}	//end if

	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
