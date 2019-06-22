<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_News.Controller.newsadd" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>

<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
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
	ViewBuilder.Append("<title>添加编辑下载</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link href=\"" + adminpath.ToString() + "css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<%plugin(jquery)%>\r\n");
	ViewBuilder.Append("<%plugin(editor)%>\r\n");
	ViewBuilder.Append("<%plugin(layer)%>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + adminpath.ToString() + "js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        KindEditor.create('textarea[name=\"content\"]', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + webpath.ToString() + "plugins/editor/uploadajax.aspx?sortid=" + sortid.ToString() + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + webpath.ToString() + "plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            allowFileManager: true\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        var editor = KindEditor.editor({\r\n");
	ViewBuilder.Append("            uploadJson: '" + webpath.ToString() + "plugins/editor/uploadajax.aspx?sortid=" + sortid.ToString() + "',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + webpath.ToString() + "plugins/editor/filemanagerajax.aspx',\r\n");
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
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"downloadmanage.aspx?sortid=" + sortid.ToString() + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"" + GetSortNav(sortinfo,pagename).ToString() + "|添加编辑下载," + rawurl.ToString() + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\" enctype=\"multipart/form-data\">\r\n");
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
	ViewBuilder.Append("          <td style=\"width:60px\">下载名称： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          <input style=\"width: 400px\" id=\"title\" name=\"title\" value=\"" + newsinfo.title.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	if (sortinfo.types!="")
	{

	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td>下载分类： </td>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	loop__id=0;
	foreach(TypeInfo types in typelist)
	{
	loop__id++;

	ViewBuilder.Append("            <select id=\"typelist\" name=\"typelist\">\r\n");
	ViewBuilder.Append("            <option value=\"\">" + types.name.ToString().Trim() + "</option>\r\n");

	loop__id=0;
	foreach(TypeInfo types2 in TypeBll.GetTypeList(types.id))
	{
	loop__id++;

	ViewBuilder.Append("            <option value=\"" + types2.id.ToString().Trim() + "\" \r\n");

	if (ischecked(types2.id,newsinfo.typelist))
	{

	ViewBuilder.Append(" selected=\"selected\" \r\n");

	}	//end if

	ViewBuilder.Append(">" + types2.name.ToString().Trim() + "</option>\r\n");

	}	//end loop

	ViewBuilder.Append("            </select>\r\n");

	}	//end loop

	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	}	//end if

	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">下载版本： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          <input style=\"width: 400px\" id=\"subtitle\" name=\"subtitle\" value=\"" + newsinfo.subtitle.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">下载地址： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          <input style=\"width: 400px\" id=\"otherurl\" name=\"otherurl\" value=\"" + newsinfo.otherurl.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\">下载作者： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("          <input style=\"width: 400px\" id=\"author\" name=\"author\" value=\"" + newsinfo.author.ToString().Trim() + "\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr> \r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <textarea style=\"height:400px; width:100%;display:none\" id=\"content\" name=\"content\" cols=\"20\" rows=\"2\">\r\n");
	ViewBuilder.Append("              " + newsinfo.content.ToString().Trim() + "\r\n");
	ViewBuilder.Append("              </textarea>\r\n");
	ViewBuilder.Append("          </td> \r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 下载摘要：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <textarea id=\"description\" name=\"description\" style=\"width:99%; height:80px;\" cols=\"20\" rows=\"2\">" + newsinfo.description.ToString().Trim() + "</textarea>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\" style=\"width:60px\">下载图片： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (newsinfo.img!="")
	{

	ViewBuilder.Append("              <img id=\"titleimg\" src=\"" + newsinfo.img.ToString().Trim() + "\" width=\"160\" height=\"160\">\r\n");

	}
	else
	{

	ViewBuilder.Append("              <img id=\"titleimg\" src=\"" + adminpath.ToString() + "images/default.gif\" width=\"160\" height=\"160\">\r\n");

	}	//end if

	ViewBuilder.Append("              <br>\r\n");
	ViewBuilder.Append("              <input type=\"hidden\" id=\"img\" name=\"img\" value=\"" + newsinfo.img.ToString().Trim() + "\"> \r\n");
	ViewBuilder.Append("              <input type=\"button\" id=\"image1\" value=\"选择图片\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"td_class\" style=\"width:60px\">下载附件： </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <input type=\"text\" id=\"file\" name=\"file\" value=\"" + newsinfo.file.ToString().Trim() + "\" style=\"width: 400px\"><br>\r\n");
	ViewBuilder.Append("              <input id=\"uploadfile\" name=\"uploadfile\" type=\"file\">\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width:100%;\" class=\"border\">\r\n");

	if (isperm)
	{

	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 审核状态：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <label for=\"status0\"><input id=\"status0\" name=\"status\" value=\"0\" \r\n");

	if (newsinfo.status==0)
	{

	ViewBuilder.Append(" checked=\"checked\" \r\n");

	}	//end if

	ViewBuilder.Append(" type=\"radio\">未审核</label> \r\n");
	ViewBuilder.Append("              <label for=\"status1\"><input id=\"status1\" name=\"status\" value=\"1\" \r\n");

	if (newsinfo.status==1)
	{

	ViewBuilder.Append(" checked=\"checked\" \r\n");

	}	//end if

	ViewBuilder.Append(" type=\"radio\">已审核</label>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	}
	else
	{

	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td style=\"width:60px\"> 审核状态：</td>\r\n");
	ViewBuilder.Append("          <td>\r\n");

	if (newsinfo.status==1)
	{

	ViewBuilder.Append("              已审核\r\n");

	}
	else
	{

	ViewBuilder.Append("              未审核\r\n");

	}	//end if

	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	}	//end if

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
	ViewBuilder.Append("            window.location.href = \"" + link.ToString() + "\";\r\n");
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
