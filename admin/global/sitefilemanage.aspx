<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.sitefilemanage" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>

<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="System.Data" %>
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
	ViewBuilder.Append("<title>站点文件管理</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + plupath.ToString() + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + plupath.ToString() + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"../js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=fileid]').attr(\"checked\", this.checked)\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitdel\").click(function () {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#formpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submitcopy\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"copy\");\r\n");
	ViewBuilder.Append("            $(\"#formpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        PageNav(\"系统站点管理," + rawpath.ToString() + "sitemanage.aspx|站点文件管理," + rawpath.ToString() + "" + pagename.ToString() + "?sitepath=" + m_sitepath.ToString() + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"formpost\" method=\"post\" name=\"formpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"sitepath\" id=\"sitepath\" value=\"\"> \r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("    <tr><td>\r\n");
	ViewBuilder.Append("    <div class=\"newslist\">\r\n");
	ViewBuilder.Append("       <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li style=\"background: url(../images/delete.gif) 2px 6px no-repeat\"><a id=\"submitdel\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("            <li style=\"background: url(../images/page_copy.png) 2px 6px no-repeat\"><a id=\"submitcopy\" href=\"#\">复制</a></li>\r\n");
	ViewBuilder.Append("            <li style=\"background: url(../images/refresh.gif) 2px 6px no-repeat\"><a href=\"" + rawurl.ToString() + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("            <li style=\"background: url(../images/return.gif) 2px 6px no-repeat\"><a href=\"" + reurl.ToString() + "\">返回上一级</a></li>\r\n");

	if (m_path=="/")
	{

	ViewBuilder.Append("            <li style=\"float:right; width:auto\"><strong>站点文件管理(" + m_sitepath.ToString() + "" + m_path.ToString() + ")</strong></li>\r\n");

	}
	else
	{

	ViewBuilder.Append("            <li style=\"float:right; width:auto\"><strong>站点文件管理(" + m_sitepath.ToString() + "/" + m_path.ToString() + ")</strong></li>\r\n");

	}	//end if

	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    <tr><td>\r\n");
	ViewBuilder.Append("   <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr class=\"thead\">\r\n");
	ViewBuilder.Append("            <td width=\"40\">\r\n");
	ViewBuilder.Append("                <input id=\"checkall\" name=\"checkall\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                文件名称\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                修改时间\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                文件类型\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                文件大小\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td width=\"100\">\r\n");
	ViewBuilder.Append("                操作\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	loop__id=0;
	foreach(DataRow files in filelist.Rows)
	{
	loop__id++;

	ViewBuilder.Append("        <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <input id=\"fileid\" name=\"fileid\" value=\"" + files["id"].ToString().Trim() + "\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                <input id=\"type" + files["id"].ToString().Trim() + "\" name=\"type" + files["id"].ToString().Trim() + "\" value=\"" + files["type"].ToString().Trim() + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                <input id=\"file" + files["id"].ToString().Trim() + "\" name=\"file" + files["id"].ToString().Trim() + "\" value=\"" + files["name"].ToString().Trim() + "\" type=\"hidden\">\r\n");

	if (m_path=="/")
	{

	ViewBuilder.Append("                <input id=\"filepath" + files["id"].ToString().Trim() + "\" name=\"filepath" + files["id"].ToString().Trim() + "\" value=\"" + webpath.ToString() + "sites/" + m_sitepath.ToString() + "" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\" type=\"hidden\">\r\n");

	}
	else
	{

	ViewBuilder.Append("                <input id=\"filepath" + files["id"].ToString().Trim() + "\" name=\"filepath" + files["id"].ToString().Trim() + "\" value=\"" + webpath.ToString() + "sites/" + m_sitepath.ToString() + "/" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\" type=\"hidden\">\r\n");

	}	//end if

	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td valign=\"middle\" align=\"left\">\r\n");
	ViewBuilder.Append("                <img src=\"" + files["icon"].ToString().Trim() + "\" align=\"middle\">\r\n");

	if (files["type"].ToString()=="文件夹")
	{

	ViewBuilder.Append("                <a href=\"sitefilemanage.aspx?sitepath=" + m_sitepath.ToString() + "&path=" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\">" + files["name"].ToString().Trim() + "</a>\r\n");

	}
	else if (files["type"].ToString()=="xml"||files["type"].ToString()=="htm"||files["type"].ToString()=="html"||files["type"].ToString()=="css"||files["type"].ToString()=="js"||files["type"].ToString()=="txt"||files["type"].ToString()=="aspx"||files["type"].ToString()=="ascx"||files["type"].ToString()=="asp"||files["type"].ToString()=="config"||files["type"].ToString()=="sql")
	{

	ViewBuilder.Append("                <a href=\"sitefileedit.aspx?sitepath=" + m_sitepath.ToString() + "&path=" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\">" + files["name"].ToString().Trim() + "</a>\r\n");

	}
	else
	{

	ViewBuilder.Append("                <a href=\"" + webpath.ToString() + "sites/" + m_sitepath.ToString() + "/" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\" target=\"_blank\">" + files["name"].ToString().Trim() + "</a>\r\n");

	}	//end if

	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                " + files["updateTime"].ToString().Trim() + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                " + files["type"].ToString().Trim() + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                " + files["size"].ToString().Trim() + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("                <a class=\"rename\" node-data=\"" + files["id"].ToString().Trim() + "\" href=\"#\">重命名</a>&nbsp\r\n");

	if (files["type"].ToString()=="文件夹")
	{

	ViewBuilder.Append("                <a href=\"sitefilemanage.aspx?sitepath=" + m_sitepath.ToString() + "&path=" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\">打开</a>\r\n");

	}
	else if (files["type"].ToString()=="xml"||files["type"].ToString()=="htm"||files["type"].ToString()=="html"||files["type"].ToString()=="css"||files["type"].ToString()=="js"||files["type"].ToString()=="txt"||files["type"].ToString()=="aspx"||files["type"].ToString()=="ascx"||files["type"].ToString()=="asp"||files["type"].ToString()=="config")
	{

	ViewBuilder.Append("                <a href=\"sitefileedit.aspx?sitepath=" + m_sitepath.ToString() + "&path=" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\">编辑</a>\r\n");

	}
	else
	{

	ViewBuilder.Append("                <a href=\"" + webpath.ToString() + "sites/" + m_sitepath.ToString() + "/" + m_path.ToString() + "" + files["name"].ToString().Trim() + "\" target=\"_blank\">浏览</a>\r\n");

	}	//end if

	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </td></tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <div id=\"divrename\" style=\"display:none\">\r\n");
	ViewBuilder.Append("      <table style=\"width:400px;height:163px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td style=\"width:80px;text-align:right;\"> 重命名： </td>\r\n");
	ViewBuilder.Append("                <td align=\"left\">\r\n");
	ViewBuilder.Append("                    <input name=\"newfilename\" type=\"text\" value=\"\" id=\"newfilename\" style=\"height:21px;width:250px;\">\r\n");
	ViewBuilder.Append("                    <input id=\"filename\" name=\"filename\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td height=\"80\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                    <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btnback\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("       </table>\r\n");
	ViewBuilder.Append("     </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("            $('.rename').click(function () {\r\n");
	ViewBuilder.Append("                var fileId = $(this).attr('node-data');\r\n");
	ViewBuilder.Append("                var fileType = $(\"#type\" + fileId).val();\r\n");
	ViewBuilder.Append("                var filename = $(\"#file\" + fileId).val();\r\n");
	ViewBuilder.Append("                var filepath = $(\"#filepath\" + fileId).val();\r\n");
	ViewBuilder.Append("                $(\"#newfilename\").val(filename);\r\n");
	ViewBuilder.Append("                $(\"#filename\").val(filepath);\r\n");
	ViewBuilder.Append("                var title = \"文件重命名\";\r\n");
	ViewBuilder.Append("                if (fileType == '文件夹')\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    title = \"文件夹重命名\";\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                index = $.layer({\r\n");
	ViewBuilder.Append("                    type: 1,\r\n");
	ViewBuilder.Append("                    shade: [0],\r\n");
	ViewBuilder.Append("                    fix: false,\r\n");
	ViewBuilder.Append("                    title: title,\r\n");
	ViewBuilder.Append("                    maxmin: false,\r\n");
	ViewBuilder.Append("                    page: { dom: '#divrename' },\r\n");
	ViewBuilder.Append("                    area: ['400px', '200px']\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('#btnback').click(function () {\r\n");
	ViewBuilder.Append("                layer.close(index);\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("                var fileName = $(\"#divrename\").find(\"#filename\").val();\r\n");
	ViewBuilder.Append("                var newfileName = $(\"#divrename\").find(\"#newfilename\").val();\r\n");
	ViewBuilder.Append("                $.ajax({\r\n");
	ViewBuilder.Append("                    type: 'post',\r\n");
	ViewBuilder.Append("                    url: \"rename.aspx\",\r\n");
	ViewBuilder.Append("                    data: { \"filename\": fileName, \"newfilename\": newfileName },\r\n");
	ViewBuilder.Append("                    dataType: \"json\",\r\n");
	ViewBuilder.Append("                    success: function (data) {\r\n");
	ViewBuilder.Append("                        if (data.message != \"\") {\r\n");
	ViewBuilder.Append("                            alert(data.message);\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                        else {\r\n");
	ViewBuilder.Append("                            layer.close(index);\r\n");
	ViewBuilder.Append("                            layer.msg('文件重命名成功', 0, 1);\r\n");
	ViewBuilder.Append("                            setTimeout(function () {\r\n");
	ViewBuilder.Append("                                window.location.href = \"" + rawurl.ToString() + "\";\r\n");
	ViewBuilder.Append("                            }, 2000);\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
