<%Controller(FP_Link.Controller.linkadd)%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
<title>添加编辑友情链接</title>
<link href="${adminpath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
<script type="text/javascript" src="${adminpath}/js/admin.js"></script>
<script type="text/javascript">
    $(function () {
        $("#btncancle").click(function () {
            window.location.href = "linkmanage.aspx?sortid=${sortid}";
        })
        PageNav("${GetSortNav(sortinfo,pagename)}|添加编辑友情链接,${rawurl}");
    });
</script>
</head>
<body>
<form id="frmpost" method="post" name="frmpost" action="">
  <div class="newslistabout">
    <table class="borderkuang" border="0" cellspacing="0" cellpadding="0" width="100%">
      <tbody>
        <tr>
          <td class="newstitle" bgcolor="#ffffff">添加编辑友情链接</td>
        </tr>
      </tbody>
    </table>
    <table style="width:100%;" class="border">
      <tbody>
        <tr>
          <td style="width:120px">链接名称： </td>
          <td height="25">
              <input style="width: 300px" id="name" name="name" value="${linkinfo.name}"/>
          </td>
        </tr>
        <tr>
          <td style="width:120px">打开方式：</td>
          <td height="25">
            <select id="target" name="target">
              <%if linkinfo.target=="_blank"%> 
              <option value="_blank" selected>新窗口</option>
              <%else %>
              <option value="_blank">新窗口</option>
              <%/if %>
              <%if linkinfo.target=="_parent"%> 
              <option value="_parent" selected>父窗口</option>
              <%else %>
              <option value="_parent">父窗口</option>
              <%/if %>
              <%if linkinfo.target=="_self"%> 
              <option value="_self" selected>本窗口</option>
              <%else %>
              <option value="_self">本窗口</option>
              <%/if %>
            </select>
          </td>
        </tr>
        <tr>
          <td style="width:120px">链接地址： </td>
          <td height="25">
              <input style="width: 300px" id="url" name="url" value="${linkinfo.url}"/>
          </td>
        </tr>
        <tr>
          <td class="td_class"></td>
          <td height="25"><input name="submit" value="保存" type="submit" class="adminsubmit_short"/>
            <input id="btncancle" class="adminsubmit_short" name="btncancle" value="返回" type="button"/></td>
        </tr>
      </tbody>
    </table>
  </div>
</form>
</body>
</html>
