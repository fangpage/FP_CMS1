<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.articlemanage" %>
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
	ViewBuilder.Append("<title>简介文章编辑</title>\r\n");
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
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "\");\r\n");
	ViewBuilder.Append("        KindEditor.create('textarea[name=\"content\"]', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + webpath.ToString() + "tools/uploadajax.aspx?sortid=" + sortid.ToString() + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + webpath.ToString() + "tools/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var editor = KindEditor.editor({\r\n");
	ViewBuilder.Append("            uploadJson: '" + webpath.ToString() + "tools/uploadajax.aspx?sortid=" + sortid.ToString() + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + webpath.ToString() + "tools/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#image1').click(function () {\r\n");
	ViewBuilder.Append("            editor.loadPlugin('image', function () {\r\n");
	ViewBuilder.Append("                editor.plugin.imageDialog({\r\n");
	ViewBuilder.Append("                    imageUrl: $('#img').val(),\r\n");
	ViewBuilder.Append("                    clickFn: function (url, title, width, height, border, align) {\r\n");
	ViewBuilder.Append("                        $('#img').val(url);\r\n");
	ViewBuilder.Append("                        $(\"#titleimg\").attr(\"src\", url);\r\n");
	ViewBuilder.Append("                        editor.hideDialog();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
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
	ViewBuilder.Append("    <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\" style=\"width:60px;\">简介标题：</td>\r\n");
	ViewBuilder.Append("          <td align=\"left\">\r\n");
	ViewBuilder.Append("            <input style=\"width:400px\" id=\"title\" name=\"title\" value=\"" + articleinfo.title.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("     <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr> \r\n");
	ViewBuilder.Append("          <td colspan=\"2\">\r\n");
	ViewBuilder.Append("              <textarea style=\"height:400px; width:100%; display:none\" id=\"content\" name=\"content\">" + articleinfo.content.ToString().Trim() + "</textarea>\r\n");
	ViewBuilder.Append("          </td> \r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\" style=\"width:60px\">摘要内容：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          <textarea id=\"description\" name=\"description\" style=\"width:99%; height:80px;\" cols=\"20\" rows=\"2\">" + articleinfo.description.ToString().Trim() + "</textarea>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\" style=\"width:60px\">标题图片： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (articleinfo.img!="")
	{

	ViewBuilder.Append("              <img id=\"titleimg\" src=\"" + articleinfo.img.ToString().Trim() + "\" width=\"160\" height=\"160\">\r\n");

	}
	else
	{

	ViewBuilder.Append("              <img id=\"titleimg\" src=\"" + adminpath.ToString() + "images/default.gif\" width=\"160\" height=\"160\">\r\n");

	}	//end if

	ViewBuilder.Append("              <br>\r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"img\" name=\"img\" value=\"" + articleinfo.img.ToString().Trim() + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"button\" id=\"image1\" value=\"选择图片\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"></td>\r\n");
	ViewBuilder.Append("          <td align=\"left\">\r\n");
	ViewBuilder.Append("            <input id=\"btnsubmit\" name=\"btnsubmit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("         </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{

	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('" + msg.ToString() + "', 2, 1);\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");

	}	//end if

	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
