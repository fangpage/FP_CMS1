<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Link.Controller.linkadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Link.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加编辑友情链接</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("  $(function () {\r\n");
	ViewBuilder.Append("        var editor = KindEditor.editor({\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(webpath) + "plugins/editor/uploadajax.aspx?sortid=" + echo(sortid) + "&attachid=" + echo(linkinfo.attachid) + "&app=" + echo(setupinfo.markup) + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(webpath) + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#image1').click(function () {\r\n");
	ViewBuilder.Append("          editor.loadPlugin('image', function () {\r\n");
	ViewBuilder.Append("            editor.plugin.imageDialog({\r\n");
	ViewBuilder.Append("              imageUrl: $('#img').val(),\r\n");
	ViewBuilder.Append("              clickFn: function (url, title, width, height, border, align) {\r\n");
	ViewBuilder.Append("                $('#img').val(url);\r\n");
	ViewBuilder.Append("                $(\"#titleimg\").attr(\"src\", url);\r\n");
	ViewBuilder.Append("                editor.hideDialog();\r\n");
	ViewBuilder.Append("              }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("          });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"linkmanage.aspx?sortid=" + echo(sortid) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "|添加编辑友情链接," + echo(rawurl) + "\");\r\n");
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
	ViewBuilder.Append("              <input style=\"width: 300px\" id=\"name\" name=\"name\" value=\"" + echo(linkinfo.name) + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:120px\">链接图片： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (linkinfo.img!="")
	{
	ViewBuilder.Append("<img id=\"titleimg\" src=\"" + echo(linkinfo.img) + "\" width=\"160\" height=\"160\">\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<img id=\"titleimg\" src=\"" + echo(webpath) + "common/images/default.gif\" width=\"160\" height=\"160\">\r\n");
	}//end if
	ViewBuilder.Append("              <br>\r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"img\" name=\"img\" value=\"" + echo(linkinfo.img) + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"attachid\" name=\"attachid\" value=\"" + echo(linkinfo.attachid) + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"button\" id=\"image1\" value=\"上传图片\">&nbsp;&nbsp;<input type=\"button\" id=\"btn_clearimg\" value=\"清空图片\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:120px\">打开方式：</td>\r\n");
	ViewBuilder.Append("          <td height=\"25\">\r\n");
	ViewBuilder.Append("            <select id=\"target\" name=\"target\">\r\n");
	ViewBuilder.Append("              <option "+(linkinfo.target=="_blank"?echo("selected"):echo(""))+" value=\"_blank\">新窗口</option>\r\n");
	ViewBuilder.Append("              <option "+(linkinfo.target=="_parent"?echo("selected"):echo(""))+" value=\"_parent\">父窗口</option>\r\n");
	ViewBuilder.Append("              <option "+(linkinfo.target=="_self"?echo("selected"):echo(""))+" value=\"_self\" selected=\"\">本窗口</option>\r\n");
	ViewBuilder.Append("            </select>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:120px\">链接地址： </td>\r\n");
	ViewBuilder.Append("          <td height=\"25\">\r\n");
	ViewBuilder.Append("              <input style=\"width: 300px\" id=\"url\" name=\"url\" value=\"" + echo(linkinfo.url) + "\">\r\n");
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
