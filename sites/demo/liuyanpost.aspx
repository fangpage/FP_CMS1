<%controller(FP_GuestBook.Controller.guestbookpost) %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>提交留言</title>
    <script type="text/javascript" src="${plupath}/jquery/jquery.js"></script>
    <link rel="stylesheet" href="${plupath}/layer/skin/layer.css"  type="text/css" id="skinlayercss"/>
    <script src="${plupath}/layer/layer.js" type="text/javascript"></script>
</head>
<body>
<script type="text/javascript">
    layer.msg('信件提交成功，请等待管理员的审核。', 0, 1);
    var bar = 0;
    count();
    function count() {
        bar = bar + 4;
        if (bar < 80) {
            setTimeout("count()", 100);
        }
        else {
            window.location.href = "guestbooklist.aspx?sortid=9";
        }
    }
</script>
</body>
</html>