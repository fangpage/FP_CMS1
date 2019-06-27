<%controller(FP_News.Controller.*) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
<title>新闻文章审核</title>
<link rel="stylesheet" type="text/css" href="${adminpath}/css/admin.css"/>
<link rel="stylesheet" type="text/css" href="${adminpath}/css/datagrid.css"/>
<script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
<link rel="stylesheet" href="${plupath}/ztree/zTreeStyle.css" type="text/css"/>
<script type="text/javascript" src="${plupath}/ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="${plupath}/ztree/jquery.ztree.excheck-3.5.js"></script>
<link rel="stylesheet" href="${plupath}/layer/skin/layer.css"  type="text/css" id="skinlayercss"/>
<script src="${plupath}/layer/layer.js" type="text/javascript"></script>
<script type="text/javascript" src="${adminpath}/js/admin.js"></script>
<script type="text/javascript">
    $(function () {
        PageNav("${GetSortNav(sortinfo,pagename)}");
        
        $('#checkall').click(function () {
            $('input[name=chkid]').attr("checked", this.checked)
        })
        $("#submitdel").click(function () {
            if (confirm("你确定要删除吗？删除之后将无法进行恢复")) {
                $("#action").val("delete");
                $("#frmpost").submit();
            }
        })
        $("#submit_status").click(function () {
            if (confirm("你确定要批量审核通过所选文章吗？")) {
                $("#action").val("status");
                $("#frmpost").submit();
            }
        })
    })
</script>
</head>
<body>
  <form id="frmpost" method="post" name="frmpost" action="">
  <input type="hidden" name="action" id="action" value=""/>
  <input type="hidden" name="targetid" id="targetid" value=""/>
  <table class="ntcplist">
    <tr>
      <td colspan="2">
      <div class="newslist">
          <div class="newsicon">
            <ul>
              <li style="background: url(${adminpath}images/delete.gif) 2px 6px no-repeat"><a id="submitdel" href="#">删除</a></li>
              <li style="background: url(${adminpath}images/add.gif) 2px 6px no-repeat"><a id="submit_status" href="#">批量审核</a></li>
              <li style="background: url(${adminpath}images/refresh.gif) 2px 6px no-repeat"><a href="newsstatus.aspx?sortid=${sortid}">刷新</a> </li>
              <li style="float:right; width:auto"><strong>${sortinfo.name}</strong></li>
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
              <td width="40"><input id="checkall" name="checkall" type="checkbox"/></td>
        	  <td>文章标题</td>
              <td width="100">所属栏目</td>
              <td width="120">发布时间</td>
              <td width="60">发布者</td>
              <td width="50">浏览数</td>
              <td width="40">状态</td>
              <td width="60">操作</td>
            </tr>
            <%loop (NewsInfo) news newslist %>
            <tr class="tlist" onmouseover="curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'" onmouseout="this.style.backgroundColor=curcolor">
              <td><input id="chkid" name="chkid" value="${news.id}" type="checkbox"/></td>
              <td align="left">
              ${news.title}
              </td>
              <td align="center">${news.SortInfo.name}</td>
              <td align="center">${fmdate(news.postdatetime,"yyyy-MM-dd HH:mm:dd")}</td>
              <td align="center">${news.UserInfo.username}</td>
              <td align="center">${news.views}</td>
              <td align="center">
              <%if news.status==1 %>
              <img src="images/state1.gif" width="16" height="14" />
              <%else %>
              <img src="images/state0.gif" width="14" height="14" />
              <%/if %>
              </td>
              <td><a style="color: #1317fc" href="newsadd.aspx?id=${news.id}&sortid=${sortid}">审核</a></td>
            </tr>
            <%/loop %>
          </tbody>
        </table>
        </td>
    </tr>
    <tr>
       <td align="left">共有${pager.total}篇文章，页次：${pager.pageindex}/${pager.pagecount}，${pager.pagesize}篇每页</td>
       <td align="right"><div class="pages">${pager.pagenum}</div></td>
    </tr>
  </table>
  </form>
</body>
</html>
