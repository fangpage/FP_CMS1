<%Controller(FP_News.Controller.newsmanage) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="content-type"/>
<title>下载管理</title>
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
    var setting = {
        view: {
            dblClickExpand: true,
            showLine: true,
            selectedMulti: false
        },
        check: {
            enable: true,
            chkboxType :  { "Y" : "s", "N" : "s" }
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "id",
                pIdKey: "pId",
                rootPId: ""
            }
        }
    };
    var zNodes = [
        ${zNodes}
    ];
    $(function () {
        PageNav("${GetSortNav(sortinfo,pagename)}");
        var h = 390;
        $("#table").height(h);
        $("#tree").height(h - 40);
        var zTree=$.fn.zTree.init($("#tree"), setting, zNodes);
        $('#checkall').click(function () {
            $('input[name=chkid]').attr("checked", this.checked)
        })
        $("#submitdel").click(function () {
            if (confirm("你确定要删除吗？删除之后将无法进行恢复")) {
                $("#action").val("delete");
                $("#frmpost").submit();
            }
        })
        var index1 = layer.getFrameIndex(window.name);
        $("#btn_remove").click(function () {
            $("#btnok_remove").show();
            $("#btnok_copy").hide();
            index1 = $.layer({
                type: 1,
                shade: [0],
                title: '移动文章',
                maxmin: false,
                area: ['500px', '440px'],
                page: { dom: '#selectsort' }
            });
        });
        $("#btn_copy").click(function () {
            $("#btnok_remove").hide();
            $("#btnok_copy").show();
            index1 = $.layer({
                type: 1,
                shade: [0],
                title: '复制文章',
                maxmin: false,
                area: ['500px', '440px'],
                page: { dom: '#selectsort' }
            });
        });
        $('#btnclose').click(function () {
            layer.close(index1);
        });
        $('#btnok_remove').click(function () {
            GetCheckedAll();
            $("#action").val("remove");
            layer.close(index1);
            $("#frmpost").submit();
        });
        $('#btnok_copy').click(function () {
            GetCheckedAll();
            $("#action").val("copy");
            layer.close(index1);
            $("#frmpost").submit();
        });
    })

    function GetCheckedAll() {
        var treeObj = $.fn.zTree.getZTreeObj("tree");
        var nodes = treeObj.getCheckedNodes(true);
        var msg = '';
        for (var i = 0; i < nodes.length; i++) {
            if(nodes[i].id!='')
            {
                if(msg!='')
                {
                    msg+=',';
                }
                msg += nodes[i].id;
            }
        }
        $("#targetid").val();
        $("#targetid").val(msg);
    }
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
              <li style="background: url(images/move.gif) 2px 6px no-repeat"><a id="btn_remove" href="javascript:void();">移动</a></li>
              <li style="background: url(images/copy.gif) 2px 6px no-repeat"><a id="btn_copy" href="javascript:void();">复制</a></li>
              <li style="background: url(${adminpath}images/add.gif) 2px 6px no-repeat"><a href="downloadadd.aspx?sortid=${sortid}&typeid=${typeid}">添加</a></li>
              <li style="background: url(${adminpath}images/refresh.gif) 2px 6px no-repeat"><a href="downloadmanage.aspx?sortid=${sortid}&typeid=${typeid}">刷新</a> </li>
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
        	  <td>下载标题</td>
              <td width="100">所属栏目</td>
              <td width="120">发布时间</td>
              <td width="60">发布者</td>
              <td width="40">浏览数</td>
              <td width="40">下载数</td>
              <td width="40">状态</td>
              <td width="60">操作</td>
            </tr>
            <%loop (NewsInfo) news newslist %>
            <tr class="tlist" onmouseover="curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'" onmouseout="this.style.backgroundColor=curcolor">
              <td><input id="chkid" name="chkid" value="${news.id}" type="checkbox"/></td>
              <td align="left">
              ${news.title}${news.subtitle}
              </td>
              <td align="center">${news.SortInfo.name}</td>
              <td align="center">${fmdate(news.postdatetime,"yyyy-MM-dd HH:mm:dd")}</td>
              <td align="center">${news.UserInfo.username}</td>
              <td align="center">${news.views}</td>
              <td align="center">${news.downloads}</td>
              <td align="center">
              <%if news.status==1 %>
              <img src="images/state1.gif" width="16" height="14" />
              <%else %>
              <img src="images/state0.gif" width="14" height="14" />
              <%/if %>
              </td>
              <td><a style="color: #1317fc" href="downloadadd.aspx?id=${news.id}">编辑</a></td>
            </tr>
            <%/loop %>
          </tbody>
        </table>
        </td>
    </tr>
    <tr>
       <td align="left">共有${pager.total}个下载，页次：${pager.pageindex}/${pager.pagecount}，${pager.pagesize}条每页</td>
       <td align="right"><div class="pages">${pager.pagenum}</div></td>
    </tr>
  </table>
<div id="selectsort" style="display:none">
     <table id="table" cellpadding="0" cellspacing="0" border="0" style="width: 485px; margin: 0px;">
        <tr>
            <td style="width: 485px; border: solid 1px #93C7D4; vertical-align: top;">
                <ul id="tree" class="ztree" style="width: 485px; overflow: auto;"></ul>
            </td>
            </tr>
            <tr>
            <td height="25" align="right">
            <input type="button" name="btnok_remove" value="确定" id="btnok_remove" class="adminsubmit_short"/>
            <input type="button" name="btnok_copy" value="确定" id="btnok_copy" class="adminsubmit_short"/>
            <input type="button" name="btnclose" value="关闭" id="btnclose" class="adminsubmit_short"/>
            </td>
            </tr>
      </table>
	</div>
  </form>
</body>
</html>
