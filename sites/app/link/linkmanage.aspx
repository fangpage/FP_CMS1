<%Controller(FP_Link.Controller.linkmanage)%>
<%using(FP_Link.Model) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="content-type" />
    <title>友情链接管理</title>
    <link rel="stylesheet" type="text/css" href="${adminpath}/css/admin.css" />
    <link rel="stylesheet" type="text/css" href="${adminpath}/css/datagrid.css" />
    <script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
    <script type="text/javascript" src="${adminpath}/js/admin.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#checkall').click(function () {
                $('input[name=chkid]').attr("checked", this.checked)
            })
            $("#submitdel").click(function () {
                if (confirm("你确定要删除吗？删除之后将无法进行恢复")) {
                    $("#action").val("delete");
                    $("#frmpost").submit();
                }
            })
            PageNav("${GetSortNav(sortinfo,pagename)}");
        })
    </script>
</head>
<body>
    <form id="frmpost" method="post" name="frmpost" action="">
    <input type="hidden" name="action" id="action" value="" />
    <table class="ntcplist">
        <tr>
            <td colspan="2">
                <div class="newslist">
                    <div class="newsicon">
                        <ul>
                            <li style="background: url(${adminpath}/images/delete.gif) 2px 6px  no-repeat"><a
                                id="submitdel" href="#">删除</a></li>
                            <li style="background: url(${adminpath}/images/add.gif) 2px 6px no-repeat"><a href="linkadd.aspx?sortid=${sortid}">
                                添加</a></li>
                            <li style="background: url(${adminpath}/images/refresh.gif) 2px 6px no-repeat"><a
                                href="linkmanage.aspx?sortid=${sortid}">刷新</a> </li>
                            <li style="float: right; width: auto"><strong>${sortinfo.name}</strong></li>
                        </ul>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <table class="datalist" border="1" rules="all" cellspacing="0">
                <tbody>
                    <tr class="thead">
                        <td width="40">
                            <input id="checkall" name="checkall" type="checkbox" />
                        </td>
                        <td>
                            链接名称
                        </td>
                        <td>
                            链接地址
                        </td>
                        <td width="60">
                            操作
                        </td>
                    </tr>
                    <%loop (LinkInfo) item linklist %>
                    <tr class="tlist" onmouseover="curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'"
                        onmouseout="this.style.backgroundColor=curcolor">
                        <td>
                            <input id="chkid" name="chkid" value="${item.id}" type="checkbox" />
                        </td>
                        <td align="center">
                            ${item.name}
                        </td>
                        <td align="center">
                            ${item.url}
                        </td>
                        <td>
                            <a style="color: #1317fc" href="linkadd.aspx?id=${item.id}">编辑</a>
                        </td>
                    </tr>
                    <%/loop %>
                </tbody>
            </table>
           </td>
       </tr>
      <tr>
        <td align="left">
            共有${pager.total}个记录，页次：${pager.pageindex}/${pager.pagecount}，${pager.pagesize}条每页
        </td>
        <td align="right">
            <div class="pages">${pager.pagenum}</div>
        </td>
      </tr>
    </table>
    </form>
</body>
</html>
