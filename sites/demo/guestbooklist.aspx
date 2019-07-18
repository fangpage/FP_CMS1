<%controller(FP_GuestBook.Controller.*) %>
<%using(FangPage.WMS.#) %>
<!DOCTYpE html pUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>来信咨询 - ${pagetitle}</title>
<script type="text/javascript" src="statics/js/jquery.min.js"></script>
<link href="statics/css/index.css" rel="stylesheet" type="text/css"/>
<link href="statics/css/form_1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="statics/js/formvalidator.js"></script>
<style type="text/css">
.comment_title{
   width:700px;
}
.r_b1_title{
   width:700px;
}
.r_b1_nr{
   width:700px;
}
.r_reply{
   width:700px;
}
.r_b1{
   width:700px;
}
.ib, .ib-a a {
display: inline-block;
zoom: 1;
}
.rt {
  float: right;
}
</style>
</head>
<body>
<div class="bg1" >
  <%include(_header.aspx) %>
  <!--main-->
  <div class="main" >
    <div class="container" >
      <div class="lindnav"></div>
      <div class="nr">
        <div style="clear:both;"> </div>
        <!--内容开始-->
        <div class="2box">
          <%include(_lefter.aspx) %>
          <!--end-->
          <div class="rightbox">
            <div class="title_attention" ><p>网上咨询</p></div>
            <!--列表标题-->
            <!--填表开始-->
            <div class="right_bottom">
              <div class="apply mt5" >
                <p class="red_text"> </p>
                <form action="liuyanpost.aspx?sortid=${sortid}" method="post" name="myform" id="myform">
                  <input type="hidden" name="typeid" id="typeid" value="72" />
                  <input type="hidden" name="page" id="page" value="" />
                  <table cellspacing="10">
                    <tr>
                      <td class="apply_title"><strong>姓&nbsp;名：</strong></td>
                      <td><input id="name" name="name" value=""/></td>
                    </tr>
                    <tr>
                      <td class="apply_title"><strong>电话号码：</strong></td>
                      <td><input id="phone" name="phone" size="30" value="" /></td>
                    </tr>
                    <tr>
                      <td class="apply_title"><strong>电子邮箱：</strong></td>
                      <td><input id="email" name="email" size="30" value="" /></td>
                    </tr>                  
                    <tr>
                      <td class="apply_title"><strong>标&nbsp;题：</strong></td>
                      <td><input id="title" name="title"  size="60" /></td>
                    </tr>
                    <tr>
                      <td class="apply_title"><strong>内&nbsp;容：</strong></td>
                      <td><textarea  id="content" name="content" cols="53" rows="5" ></textarea></td>
                    </tr>
                    <tr>
                      <td class="apply_title"></td>
                      <td align="center"><input type="submit" value="" name="dosubmit" class="button" style="background:url(statics/images/ok.png); width:80px;height:30px;border:none;cursor:pointer;">
                        <input type="reset" value="" name="reset" class="button" style="background:url(statics/images/again.png);width:80px;height:30px;border:none;cursor:pointer;"></td>
                    </tr>
                  </table>
                </form>
                <p class="mb30">注：请认真填写以上信息！</p>
              </div>
            </div>
            
            <div class="reply">
              <div class="comment_title"><span>全部留言</span></div>
              <div class="reply_box">
                <!--有回复留言-->
                  <%loop (GuestBookInfo) item _guestbooklist %>        
                  <div class="r_b1">
                    <div class="r_b1_title"><span style="color:#06c;">${item.name}</span><span>|</span><span>发表于2015-09-29 11:30:59</span></div>
                    <div class="r_b1_title">
                      <span style="font-weight:bold;color:#333;">标题</span><span style="color:#333;">${item.title}</span></div>
                    <div class="r_b1_nr">
                    <p>${item.content}</p>
                    </div>
                    <%if item.reply!="" %>
                    <!--回复开始-->
                    <div class="r_reply">
                    <p>回复： ${item.reply}</p>
                    </div>
                    <!--回复结束-->
                    <%/if %>
                  </div>
                  <%/loop %>
              </div>
            </div>  
            <div class="clear"></div>
            <div class="pages">
              <div class="pagelist"> <a class="a1">共有${pager.total}条,页数${pager.pageindex}/${pager.pagecount}</a> <a href="?sortid=${sortid}&pageindex=${pager.prepage}" class="a1">上一页</a> <a href="?sortid=${sortid}&pageindex=${pager.nextpage}" class="a1">下一页</a>
                <input class="t" id="page">
                <input class="b" type="button" onclick="clicke(${sortid})"/>
              </div>
            </div>
            <script type="text/javascript">
                function clicke(catid) {
                    var t_page = document.getElementById("page").value;
                    if (t_page != "" && t_page <= items && t_page >= 1) {
                        var url = "guestbooklist.aspx?sortid=" + catid + "&pageindex=" + document.getElementById("page").value;
                        window.location.href = url;
                    }
                    else {
                        alert("请输入正确的页数");
                    }
                }
            </script>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%include(_footer.aspx) %>
</div>
<script type="text/javascript">
    $(function () {
        $.formValidator.initConfig({ autotip: true, formid: "myform", onerror: function (msg) { } });
        $("#name").formValidator({ onshow: "请输入姓名", onfocus: "请输入姓名" }).inputValidator({ min: 4, max: 10, onerror: "姓名应该为2-3个汉字" }).regexValidator({ regexp: "ps_username", datatype: "enum", onerror: "姓名格式错误" });
        $("#phone").formValidator({ onshow: "请输入联系电话", onfocus: "请输入联系电话", oncorrect: "电话格式正确" }).inputValidator({ min: 8, max: 13, onerror: "电话号码应该为8-13为之间" }).regexValidator({ regexp: "^[0-9-]{6,13}$", onerror: "请填写正确的电话号码" });
        $("#title").formValidator({ onshow: "请输入标题", onfocus: "请输入标题" }).inputValidator({ min: 4, max: 255, onerror: "请输入标题" });
        $("#content").formValidator({ onshow: "请输入内容", onfocus: "请输入内容" }).inputValidator({ min: 4, max: 99999, onerror: "请输入内容" });
        $("#email").formValidator({ onshow: "请输入邮箱地址", onfocus: "请输入邮箱地址", oncorrect: "邮箱地址格式正确" }).inputValidator({ min: 5, onerror: "邮箱地址错误" }).regexValidator({ regexp: "email", datatype: "enum", onerror: "请填写正确的邮箱地址" });
        $("#address").formValidator({ onshow: "请输入内容", onfocus: "请输入内容" }).inputValidator({ min: 4, max: 999, onerror: "请输入内容" });
        
    });
</script>
</body>
</html>
