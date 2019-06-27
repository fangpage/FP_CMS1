<%Controller(FP_News.Controller.newsadd) %>
<%using(FangPage.WMS.#) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
<title>添加编辑图片</title>
<link href="${adminpath}/css/admin.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
<link rel="stylesheet" type="text/css" href="${plupath}/editor/themes/default/default.css"/>
<script type="text/javascript" src="${plupath}/editor/kindeditor.js"></script>
<script type="text/javascript" src="${plupath}/editor/lang/zh_CN.js"></script>
<link rel="stylesheet" href="${plupath}/layer/skin/layer.css"  type="text/css" id="skinlayercss"/>
<script src="${plupath}/layer/layer.js" type="text/javascript"></script>
<script type="text/javascript" src="${plupath}/calendar/WdatePicker.js"></script>
<script type="text/javascript" src="${adminpath}/js/admin.js"></script>
<script type="text/javascript">
    $(function () {
        <%set (string){m_link}="newsmanage.aspx"%>
        PageNav("${GetSortNav(sortinfo,m_link)}|添加编辑图片,${rawurl}");
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
        $("#btncancle").click(function () {
            window.location.href = "imgmanage.aspx?sortid=${sortid}";
        })
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
          <td style="width:60px">图片标题： </td>
          <td>
          <input style="width: 400px" id="title" name="title" value="${newsinfo.title}"/>
          </td>
        </tr>
        <%if sortinfo.types!="" %>
        <%loop (TypeInfo) types typelist %>
        <tr>
        <td>${types.name}： </td>
        <td>
            <%if types.type==1 %>
            <%loop (TypeInfo) types2 TypeBll.GetTypeList(types.id) %>
            <input id="typelist1" name="typelist" value="${types2.id}" <%if ischecked(types2.id,newsinfo.typelist) %> checked="checked" <%/if %> type="radio" />${types2.name}
            <%/loop %>
            <%else if types.type==2 %>
            <%loop (TypeInfo) types2 TypeBll.GetTypeList(types.id) %>
            <input id="typelist2" name="typelist" value="${types2.id}" <%if ischecked(types2.id,newsinfo.typelist) %> checked="checked" <%/if %> type="checkbox" />${types2.name}
            <%/loop %>
            <%else %>
            <select id="typelist" name="typelist">
            <option value="">选择${types.name}</option>
            <%loop (TypeInfo) types2 TypeBll.GetTypeList(types.id) %>
            <option value="${types2.id}" <%if ischecked(types2.id,newsinfo.typelist) %> selected="selected" <%/if %> >${types2.name}</option>
            <%/loop %>
            </select>
            <%/if %>
        </td>
        </tr>
        <%/loop %>
        <%/if %>
        </table>
        <table style="width:100%;" class="border">
        <tr> 
          <td>
              <textarea style="height:400px; width:100%;display:none" id="content" name="content" cols="20" rows="2">
              ${newsinfo.content}
              </textarea>
          </td> 
        </tr>
        </table>
        <table style="width:100%;" class="border">
        <tr>
          <td style="width:60px"> 图片摘要：</td>
          <td>
            <textarea id="description" name="description" style="width:99%; height:80px;" cols="20" rows="2">${newsinfo.description}</textarea>
          </td>
        </tr>
        </table>
        <table style="width:100%;" class="border">
        <tr>
          <td class="td_class" style="width:60px">标题图片： </td>
          <td>
              <%if {newsinfo.img}!="" %>
              <img id="titleimg" src="${newsinfo.img}" width="160" height="160"/>
              <%else %>
              <img id="titleimg" src="${adminpath}images/default.gif" width="160" height="160"/>
              <%/if %>
              <br />
              <input type="hidden" id="img" name="img" value="${newsinfo.img}"/> 
              <input type="button" id="image1" value="选择图片" />
          </td>
        </tr>
       <tr>
          <td style="width:60px">图片作者： </td>
          <td>
          <input style="width: 400px" id="author" name="author" value="${newsinfo.author}"/>
          </td>
        </tr>
        <tr>
          <td style="width:60px">图片来源： </td>
          <td>
          <input style="width: 400px" id="source" name="source" value="${newsinfo.source}"/>
          </td>
        </tr>
        <tr>
          <td style="width:60px">发布时间： </td>
          <td>
             <input style="width: 400px" id="postdatetime" name="postdatetime" value='${fmdate(newsinfo.postdatetime,"yyyy-MM-dd HH:mm:ss")}' onfocus="WdatePicker({el:'postdatetime',dateFmt:'yyyy-MM-dd HH:mm:ss'})" readonly="readonly"/>
          </td>
        </tr>
        </table>
        <table style="width:100%;" class="border">
        <%if isperm %>
        <tr>
          <td style="width:60px"> 审核状态：</td>
          <td>
              <label for="status0"><input id="status0" name="status" value="0" <%if newsinfo.status==0 %> checked="checked" <%/if %> type="radio" />未审核</label> 
              <label for="status1"><input id="status1" name="status" value="1" <%if newsinfo.status==1 %> checked="checked" <%/if %> type="radio" />已审核</label>
          </td>
        </tr>
        <%else %>
        <tr>
          <td style="width:60px"> 审核状态：</td>
          <td>
              <%if newsinfo.status==1 %>
              已审核
              <%else %>
              未审核
              <%/if %>
          </td>
        </tr>
        <%/if %>
        </table>
        <table style="width:100%;" class="border">
        <tr>
          <td style="width:60px"></td>
          <td>
            <input id="btnsubmit" name="btnsubmit" value="保存" type="submit" class="adminsubmit_short"/>
            <input id="btncancle" class="adminsubmit_short" name="btncancle" value="返回" type="button"/>
         </td>
        </tr>
       </table>
  </div>
</form>
<%if ispost %>
<script type="text/javascript">
    layer.msg('${msg}', 0, 1);
    var bar = 0;
    count();
    function count() {
        bar = bar + 4;
        if (bar < 80) {
            setTimeout("count()", 100);
        }
        else {
            window.location.href = "${link}";
        }
    }
</script>
<%/if %>
</body>
</html>
