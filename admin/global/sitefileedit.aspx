<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sitefileedit" %>
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
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>站点文件编辑</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("    <link href=\"../css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + webpath.ToString() + "plugins/codemirror/codemirror.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + webpath.ToString() + "plugins/codemirror/js/codemirror.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"../js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            PageNav(\"系统站点管理," + rawpath.ToString() + "sitemanage.aspx|站点文件管理," + rawpath.ToString() + "sitefilemanage.aspx?sitepath=" + m_sitepath.ToString() + "|站点文件编辑," + rawurl.ToString() + "\");\r\n");
	ViewBuilder.Append("            $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("                PageBack(\"sitefilemanage.aspx?sitepath=" + m_sitepath.ToString() + "&path=" + m_path.ToString() + "\");\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("        .CodeMirror-line-numbers {\r\n");
	ViewBuilder.Append("            width: 2.2em;\r\n");
	ViewBuilder.Append("            color: #aaa;\r\n");
	ViewBuilder.Append("            background: #f5f5f5;\r\n");
	ViewBuilder.Append("            text-align: right;\r\n");
	ViewBuilder.Append("            padding: 0px .3em 0 0;\r\n");
	ViewBuilder.Append("            font: 12px/16px Consolas,\"Courier New\",monospace;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .clearfix {\r\n");
	ViewBuilder.Append("            zoom: 1;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .template-editer {\r\n");
	ViewBuilder.Append("            float: left;\r\n");
	ViewBuilder.Append("            width: 100%;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .editer-toolbar {\r\n");
	ViewBuilder.Append("            padding: 5px;\r\n");
	ViewBuilder.Append("            border: 1px solid #ccc;\r\n");
	ViewBuilder.Append("            border-bottom: 0;\r\n");
	ViewBuilder.Append("            background: #eee;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .editer-toolbar input.button {\r\n");
	ViewBuilder.Append("            font-size: 12px;\r\n");
	ViewBuilder.Append("            border: 0;\r\n");
	ViewBuilder.Append("            height: 20px;\r\n");
	ViewBuilder.Append("            padding: 0 0 0 16px;\r\n");
	ViewBuilder.Append("            background-color: transparent;\r\n");
	ViewBuilder.Append("            background-repeat: no-repeat;\r\n");
	ViewBuilder.Append("            background-position: 0 50%;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .editer-area {\r\n");
	ViewBuilder.Append("            margin: 0 0 5px 0;\r\n");
	ViewBuilder.Append("            border: 1px solid #ccc;\r\n");
	ViewBuilder.Append("            background: #fff;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("        <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"newstitle\" bgcolor=\"#ffffff\">编辑站点文件(" + filename.ToString() + ")</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <table style=\"width: 100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                    <td class=\"tdbg\">\r\n");
	ViewBuilder.Append("                        <div class=\"template-editer \">\r\n");
	ViewBuilder.Append("                            <div class=\"template-editer-inner\">\r\n");
	ViewBuilder.Append("                                <div class=\"clearfix\">\r\n");
	ViewBuilder.Append("                                    <div class=\"editer-col1\">\r\n");
	ViewBuilder.Append("                                        <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("                                            <div class=\"clearfix editer-toolbar\">\r\n");
	ViewBuilder.Append("                                                <input class=\"button\" type=\"submit\" value=\"保存修改\" name=\"save\" style=\"background-image: url(../images/save.gif);\">\r\n");
	ViewBuilder.Append("                                                <input class=\"button\" type=\"button\" value=\"自动换行\" onclick=\"editor.toggleWrapping();\" style=\"background-image: url(../images/wordwrap.gif);\">\r\n");
	ViewBuilder.Append("                                                <input class=\"button\" type=\"button\" value=\"返回文件列表\" id=\"btncancle\" style=\"background-image: url(../images/return.gif);\">\r\n");
	ViewBuilder.Append("                                            </div>\r\n");
	ViewBuilder.Append("                                            <div class=\"editer-area\">\r\n");
	ViewBuilder.Append("                                                <textarea cols=\"50\" rows=\"28\" style=\"width: 100%;\" name=\"content\" id=\"FileEditor\">" + content.ToString() + "</textarea>\r\n");
	ViewBuilder.Append("                                            </div>\r\n");
	ViewBuilder.Append("                                        </form>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("                                        var FileEditor = document.getElementById('FileEditor');\r\n");
	ViewBuilder.Append("                                        FileEditor.style.height = (document.body.clientHeight - 250) + 'px';\r\n");
	ViewBuilder.Append("                                        var editor = CodeMirror.fromTextArea(FileEditor, {\r\n");
	ViewBuilder.Append("                                            containerID: 'TheEditor',\r\n");
	ViewBuilder.Append("                                            lineNumbers: true,\r\n");
	ViewBuilder.Append("                                            textWrapping: false,\r\n");
	ViewBuilder.Append("                                            path: \"" + webpath.ToString() + "plugins/codemirror/js/\",\r\n");
	ViewBuilder.Append("                                            parserfile: ['parsexml.js', 'parsecss.js', 'tokenizejavascript.js', 'parsejavascript.js', 'parsehtmlmixed.js'],\r\n");
	ViewBuilder.Append("                                            stylesheet: ['" + webpath.ToString() + "plugins/codemirror/css/xmlcolors.css', '" + webpath.ToString() + "plugins/codemirror/css/jscolors.css', '" + webpath.ToString() + "plugins/codemirror/css/csscolors.css']\r\n");
	ViewBuilder.Append("                                        });\r\n");
	ViewBuilder.Append("                                    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
