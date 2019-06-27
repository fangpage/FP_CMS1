<%controller(FP_News.Controller.*) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
<title>简介文章编辑</title>
<link href="${adminpath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="${plupath}/editor/themes/default/default.css"/>
<script type="text/javascript" src="${plupath}/editor/kindeditor.js"></script>
<script type="text/javascript" src="${plupath}/editor/lang/zh_CN.js"></script>
<link rel="stylesheet" href="${plupath}/layer/skin/layer.css"  type="text/css" id="skinlayercss"/>
<script src="${plupath}/layer/layer.js" type="text/javascript"></script>
<script type="text/javascript" src="${adminpath}/js/admin.js"></script>
<script type="text/javascript">
    $(function () {
        PageNav("${GetSortNav(sortinfo,pagename)}");
        KindEditor.create('textarea[name="content"]', {
            resizeType: 1,
            uploadJson: '${webpath}/plugins/editor/uploadajax.aspx?sortid=${sortid}',
            fileManagerJson: '${webpath}/plugins/editor/filemanagerajax.aspx',
            allowFileManager: true
        });
        var editor = KindEditor.editor({
            uploadJson: '${webpath}/plugins/editor/uploadajax.aspx?sortid=${sortid}',
            fileManagerJson: '${webpath}/plugins/editor/filemanagerajax.aspx',
            allowFileManager: true
        });
        $('#image1').click(function () {
            editor.loadPlugin('image', function () {
                editor.plugin.imageDialog({
                    imageUrl: $('#img').val(),
                    clickFn: function (url, title, width, height, border, align) {
                        $('#img').val(url);
                        $("#titleimg").attr("src", url);
                        editor.hideDialog();
                    }
                });
            });
        });
    });
</script>
</head>
<body>
<form id="frmpost" method="post" name="frmpost" action="">
  <div class="newslistabout">
    <table class="borderkuang" border="0" cellspacing="0" cellpadding="0" width="100%">
      <tbody>
        <tr>
          <td class="newstitle" bgcolor="#ffffff">${sortinfo.name}</td>
        </tr>
      </tbody>
     </table>
    <table style="width:100%;" class="border">
        <tr>
          <td class="td_class" style="width:60px;">简介标题：</td>
          <td align="left">
            <input style="width:400px" id="title" name="title" value="${articleinfo.title}"/>
          </td>
        </tr>
     </table>
     <table style="width:100%;" class="border">
        <tr> 
          <td colspan="2">
              <textarea style="height:400px; width:100%; display:none" id="content" name="content">${articleinfo.content}</textarea>
          </td> 
        </tr>
    </table>
    <table style="width:100%;" class="border">
        <tr>
          <td class="td_class" style="width:60px">摘要内容：</td>
          <td>
          <textarea id="description" name="description" style="width:99%; height:80px;" cols="20" rows="2">${articleinfo.description}</textarea>
          </td>
        </tr>
    </table>
    <table style="width:100%;" class="border">
        <tr>
          <td class="td_class" style="width:60px">标题图片： </td>
          <td>
              <%if {articleinfo.img}!="" %>
              <img id="titleimg" src="${articleinfo.img}" width="160" height="160"/>
              <%else %>
              <img id="titleimg" src="${adminpath}images/default.gif" width="160" height="160"/>
              <%/if %>
              <br />
              <input type="hidden" id="img" name="img" value="${articleinfo.img}"/> 
              <input type="button" id="image1" value="选择图片" />
          </td>
        </tr>
    </table>
    <table style="width:100%;" class="border">
        <tr>
          <td style="width:60px"></td>
          <td align="left">
            <input id="btnsubmit" name="btnsubmit" value="保存" type="submit" class="adminsubmit_short"/>
         </td>
        </tr>
    </table>
  </div>
</form>
<%if ispost %>
   <script type="text/javascript">
       layer.msg('${msg}', 2, 1);
    </script>
<%/if %>
</body>
</html>

