<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_GuestBook.Controller.guestbookadd" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_GuestBook" %>
<%@ Import namespace="FP_GuestBook.Model" %>

<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-10-19 04:06:22*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>留言审核</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link href=\"" + adminpath.ToString() + "css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + plupath.ToString() + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + plupath.ToString() + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + adminpath.ToString() + "js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "|留言审核," + rawurl.ToString() + "\");\r\n");
	ViewBuilder.Append("        KindEditor.create('textarea[name=\"reply\"]', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + webpath.ToString() + "plugins/editor/uploadajax.aspx?sortid=" + sortid.ToString() + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + webpath.ToString() + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"guestbookmanage.aspx?sortid=" + sortid.ToString() + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
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
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">" + sortinfo.name.ToString().Trim() + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("     <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">姓名： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.name.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">性别： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.sex.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">身份证号： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.idcard.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">电话： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.phone.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">电子邮件： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.email.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">所在单位： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.company.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">标题： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.title.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">留言内容： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.content.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">提交时间： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          " + guestbookinfo.postdatetime.ToString().Trim() + "\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr> \r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <textarea style=\"height:400px; width:100%;display:none\" id=\"reply\" name=\"reply\" cols=\"20\" rows=\"2\">\r\n");
	ViewBuilder.Append("              " + guestbookinfo.reply.ToString().Trim() + "\r\n");
	ViewBuilder.Append("              </textarea>\r\n");
	ViewBuilder.Append("          </td> \r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 审核状态：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <label for=\"status0\"><input id=\"status0\" name=\"status\" value=\"0\" \r\n");

	if (guestbookinfo.status==0)
	{

	ViewBuilder.Append(" checked=\"checked\" \r\n");

	}	//end if

	ViewBuilder.Append(" type=\"radio\">未审核</label> \r\n");
	ViewBuilder.Append("              <label for=\"status1\"><input id=\"status1\" name=\"status\" value=\"1\" \r\n");

	if (guestbookinfo.status==1)
	{

	ViewBuilder.Append(" checked=\"checked\" \r\n");

	}	//end if

	ViewBuilder.Append(" type=\"radio\">已审核</label>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <input id=\"btnsubmit\" name=\"btnsubmit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("         </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{

	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    layer.msg('" + msg.ToString() + "', 0, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"guestbookmanage.aspx?sortid=" + sortid.ToString() + "\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	}	//end if

	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
