<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.MVC.FPController" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_News" %>
<%@ Import namespace="FP_News.Model" %>

<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2019-07-17 10:01:54*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("

<!DOCTYpE html pUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">
<title>" + pagetitle.ToString() + "</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "
<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/jquery.min.js\"></");
	ViewBuilder.Append("script>
<link href=\"" + webpath.ToString() + "sites/gxeqgyls/statics/css/index.css\" rel=\"stylesheet\" type=\"text/css\">
<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/jQuery.imgPlayer.js\"></");
	ViewBuilder.Append("script>
<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/common.js\"></");
	ViewBuilder.Append("script>
<script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/MSClass.js\"></");
	ViewBuilder.Append("script>
</head>
<body>
<div class=\"bg1\">
  \r\n");

	ViewBuilder.Append("<div class=\"header\">
<!--内容开始-->
<div class=\"head\">
<a href=\"http://www.gxeqgyls.com\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/logo.png\"></a> 
</div>
<!--nav-->
<div class=\"nav\">
    <ul>
    <li class=\"o\"><a href=\"index.aspx\">首页</a></li>
    <li> <a href=\"articleinfo.aspx?sortid=1\">联社概况</a></li>
    <li> <a href=\"newslist.aspx?sortid=2\">政务公开</a></li>
    <li> <a href=\"articleinfo.aspx?sortid=11\">政策法规</a></li>
    <li> <a href=\"newslist.aspx?sortid=8\">工作研究</a></li>
    <li> <a href=\"newslist.aspx?sortid=3\">工艺美术</a> </li>
    <li> <a href=\"newslist.aspx?sortid=4\">职称申报</a></li>
    <li> <a href=\"newslist.aspx?sortid=5\">直属学校</a> </li>
    <li> <a href=\"newslist.aspx?sortid=9\">交流互动</a></li>
    <li> <a href=\"newslist.aspx?sortid=6\">下载中心</a></li>
    </ul>
</div>
<!--end nav-->
</div>\r\n");


	ViewBuilder.Append("
  <div class=\"main\">
    <div class=\"container\">
      <div class=\"search\"></div>
      <div style=\"clear:both;\"> </div>
      <!--搜索结束-->
      <!--幻灯片播放，媒体聚焦-->
      <div class=\"box1\">
        <div style=\"float:left; width:465px;\">
          <div class=\"FocusPic\">
            <div class=\"FP_NumList\" id=\"FS_numList_01\"></div>
            <div class=\"FP_cont\" style=\"overflow:hidden;\" id=\"FS_Cont_01\">
              \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(5,"12,13,14"))
	{
	loop__id++;


	if (item.img!="")
	{

	ViewBuilder.Append("
              <div class=\"FP_pic\">
                <div><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\"><img style=\"width:465px;height:313px;\" src=\"" + FangPage.MVC.FPThumb.GetThumbnail(item.img,465)+ "\" galleryimg=\"no\" alt=\"" + item.title.ToString().Trim() + "\"></a></div>
                <div class=\"FP_tit_bg\"></div>
                <div class=\"FP_tit_txt\"><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\">" + item.title.ToString().Trim() + "</a></div>
                <div class=\"FP_tit_ico\"></div>
              </div>
              \r\n");

	}	//end if


	}	//end loop

	ViewBuilder.Append("
            </div>
          </div>
        </div>
        <div class=\"box1_1\">
          <ul class=\"tab_menu\">
            <li data-url=\"newslist.aspx?sortid=13\"><span><a target=\"_blank\">时政要闻</a></span></li>
            <li class=\"current\" data-url=\"newslist.aspx?sortid=12\"><span><a target=\"_blank\">联社动态</a></span></li>
            <li data-url=\"newslist.aspx?sortid=14\"><span><a target=\"_blank\">行业动态</a></span></li>
            <div class=\"more\"><span><a target=\"_blank\" id=\"mtsp\" href=\"newslist.aspx?sortid=12\" style=\"color: #3370c0;\">更多>></a></span></div>
          </ul>
          <script type=\"text/javascript\">
            $(\".tab_menu li\").hover(function(){
              $(\"#mtsp\").attr(\"href\",$(this).attr('data-url'));
            });
          </");
	ViewBuilder.Append("script>
          <div class=\"tab_box\">
            <div>
              <ul>
                \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(9,12))
	{
	loop__id++;

	ViewBuilder.Append("
                <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,60)+ "</a><span><a target=\"_blank\" style=\"color:#ccc;float:right;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</a></span></li>
                \r\n");

	}	//end loop

	ViewBuilder.Append("
              </ul>
            </div>
            <div style=\"display:none\">
              <ul>
                \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(9,14))
	{
	loop__id++;

	ViewBuilder.Append("
                <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,60)+ "</a><span><a target=\"_blank\" style=\"color:#ccc;float:right;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</a></span></li>
                \r\n");

	}	//end loop

	ViewBuilder.Append("
              </ul>
            </div>
            <div style=\"display:none\">
              <ul>
                \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(9,13))
	{
	loop__id++;

	ViewBuilder.Append("
                <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,60)+ "</a><span><a target=\"_blank\" style=\"color:#ccc;float:right;font-size:12px;\">" + FangPage.MVC.FPUtils.GetDate(item.postdatetime,"yyyy-MM-dd") + "</a></span></li>
                \r\n");

	}	//end loop

	ViewBuilder.Append("
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!--box1模块结束-->
      <!--banner开始-->
      <div class=\"banner\">
        <div id=\"MarqueeDiv7\" style=\"width:1000px;height:123px;overflow:hidden;\">
          <table width=\"1000\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
           <tr>
              <td height=\"123\" align=\"center\" valign=\"middle\"><a target=\"_blank\" title=\"心中有党、心中有民、心中有责、心中有戒 \" href=\"#\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/img1.jpg\" width=\"1000\" height=\"123\" border=\"0\" hspace=\"0\"></a></td>
            </tr>
            <tr>
              <td height=\"123\" align=\"center\" valign=\"middle\"><a target=\"_blank\" title=\"\" href=\"#\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/img2.jpg\" width=\"1000\" height=\"123\" border=\"0\" hspace=\"0\"></a></td>
            </tr>
            <tr>
              <td height=\"123\" align=\"center\" valign=\"middle\"><a target=\"_blank\" title=\"\" href=\"#\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/img3.jpg\" width=\"1000\" height=\"123\" border=\"0\" hspace=\"0\"></a></td>
            </tr>
          </table>
        </div>
      </div>
    <script type=\"text/javascript\">
    new Marquee(\"MarqueeDiv7\",0,0.1,1000,123,20,4000,5000,123)
    </");
	ViewBuilder.Append("script>
    <!--banner结束-->
    <div class=\"boximg\">
    <div class=\"boximg_2\">
    <div class=\"qyzc\">
    <div class=\"qyzc_bt\" style=\"position:relative;\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=15\"></a></span>
      <div class=\"more\"></div>
    </div>
    <div class=\"qyzc_nr\">
      <div class=\"box\">
        <div class=\"img-scroll\"><span class=\"prev\"></span> <span class=\"next\"></span>
          <div class=\"img-list\">
            <ul>
              \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(5,15))
	{
	loop__id++;

	ViewBuilder.Append("
              <li><a target=\"_blank\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\" title=\"" + item.title.ToString().Trim() + "\"><img style=\"border:solid #cae8ff 1px\" src=\"" + FangPage.MVC.FPThumb.GetThumbnail(item.img,300)+ "\" alt=\"" + item.title.ToString().Trim() + "\" width=\"220px\" height=\"180px\"></a></li>
              \r\n");

	}	//end loop

	ViewBuilder.Append("
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<div class=\"box2\">
  <div class=\"box2_1\">
    <div class=\"box2_1_b\">
      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=16\">政策法规</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=16\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px;\">
      <ul class=\"ul01\">
        \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,16))
	{
	loop__id++;

	ViewBuilder.Append("
        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>
        \r\n");

	}	//end loop

	ViewBuilder.Append("
      </ul>
      </div>
    </div>
    <div class=\"box2_1_b\">
      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=3\">工艺美术</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=3\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px;\">
      <ul class=\"ul01\">
        \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,3))
	{
	loop__id++;

	ViewBuilder.Append("
        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>
        \r\n");

	}	//end loop

	ViewBuilder.Append("
      </ul>
      </div>
    </div>
    <div class=\"box2_1_b\">
      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=4\">职称改革</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=4\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px;\">
      <ul class=\"ul01\">
        \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,4))
	{
	loop__id++;

	ViewBuilder.Append("
        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>
        \r\n");

	}	//end loop

	ViewBuilder.Append("
      </ul>
      </div>
    </div>
    <div class=\"box2_1_b\">
      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">工作研究</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=8\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px;\">
      <ul class=\"ul01\">
        \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,8))
	{
	loop__id++;

	ViewBuilder.Append("
        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>
        \r\n");

	}	//end loop

	ViewBuilder.Append("
      </ul>
      </div>
    </div>
    <div class=\"box2_1_b\">
      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">直属学校</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=8\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px;\">
      <ul class=\"ul01\">
        \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,8))
	{
	loop__id++;

	ViewBuilder.Append("
        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>
        \r\n");

	}	//end loop

	ViewBuilder.Append("
      </ul>
      </div>
    </div>
    <div class=\"box2_1_b\">
      <div class=\"box2_1_bt\"><span><a target=\"_blank\" href=\"newslist.aspx?sortid=8\">机关文件</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" style=\"color:#3370c0;\" href=\"newslist.aspx?sortid=8\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px;\">
      <ul class=\"ul01\">
        \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(8,8))
	{
	loop__id++;

	ViewBuilder.Append("
        <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,48)+ "</a></li>
        \r\n");

	}	//end loop

	ViewBuilder.Append("
      </ul>
      </div>
    </div>
  </div>
  <div class=\"box2_2\">
    <div class=\"box2_2_b\">
      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=10\">通知通告</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=10\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px\">
        <ul class=\"ul02\">
          \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(6,10))
	{
	loop__id++;

	ViewBuilder.Append("
          <li> <a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,36)+ "</a></li>
          \r\n");

	}	//end loop

	ViewBuilder.Append("
        </ul>
      </div>
    </div>
    <div class=\"box2_2_b\">
      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=2\">信息公开</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=2\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px\">
        <ul class=\"ul02\">
          \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(6,2))
	{
	loop__id++;

	ViewBuilder.Append("
          <li> <a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,36)+ "</a></li>
          \r\n");

	}	//end loop

	ViewBuilder.Append("
        </ul>
      </div>
    </div>
    <div class=\"box2_2_b\" style=\"overflow:hidden;\">
      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=17\">办事指南</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=17\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>
      </div>
      <div id=\"intro_nr\" style=\"margin:2px 22px;\">
        <ul>
          \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(5,17))
	{
	loop__id++;


	if (item.img!="")
	{

	ViewBuilder.Append("
          <li><a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\"><img style=\"border:solid #cae8ff 1px\" src=\"" + item.img.ToString().Trim() + "\"></a></li>
          \r\n");

	}	//end if


	}	//end loop

	ViewBuilder.Append("
        </ul>
      </div>
    </div>
    <script type=\"text/javascript\">
        new Marquee(
        {
            MSClass: [\"intro_nr\"],
            Step: 1,
            Width: 240,
            Height: 175,
            Timer: 50,
            AutoStart: true
        });
    </");
	ViewBuilder.Append("script>
    <div class=\"box2_2_b\">
      <div class=\"box2_2_bt\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=7\">来信咨询</a></span>
        <div class=\"more\"> <span><a target=\"_blank\" href=\"newslist.aspx?sortid=7\" style=\"color: #FFFFFF\">更多&gt;&gt;</a></span></div>
      </div>
      <div style=\"margin:5px 8px\">
        <ul class=\"ul02\">
          \r\n");

	loop__id=0;
	foreach(NewsInfo item in NewsBll.GetNewsList(6,3))
	{
	loop__id++;

	ViewBuilder.Append("
          <li> <a target=\"_blank\" title=\"" + item.title.ToString().Trim() + "\" href=\"newsinfo.aspx?id=" + item.id.ToString().Trim() + "\">" + FangPage.MVC.FPUtils.CutString(item.title,36)+ "</a></li>
          \r\n");

	}	//end loop

	ViewBuilder.Append("
        </ul>
      </div>
    </div>
  </div>
</div>
</div>
<div class=\"bigicon\">
  <ul>
    <li><a target=\"_blank\" href=\"http://cnlic.clii.com.cn/\"><img style=\"border:solid #cae8ff 1px\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link1.gif\"></a></li>
    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://www.chicoop.org/\"><img style=\"border:solid #cae8ff 1px\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link2.gif\"></a></li>
    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://www.cnaca.org\"><img style=\"border:solid #cae8ff 1px\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link3.gif\"></a></li>
    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://www.gxgxw.gov.cn/\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link4.gif\"></a></li>
    <li style=\"margin-left:10px;\"><a target=\"_blank\" href=\"http://gxeqgyls.com:8091\"><img src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/images/link5.gif\"></a></li>
  </ul>
</div>
</div>
  <!--end-->
  \r\n");

	ViewBuilder.Append("<div class=\"footer\">
    <div class=\"copyright\">
        <div class=\"cr_left\">
        <li><a style=\"color:#5F5F5F;\">Copyright(C) 2015 广西壮族自治区二轻城镇集体工业联合社<br>
            网站主办：广西壮族自治区二轻城镇集体工业联合社<br>
            网站网址：http://www.gxeqgyls.com<br>
            后台管理：</a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"/admin/\">后台登录</a>
        </li>
        </div>
        <div class=\"cr_right\">
        <li><a style=\"color:#5F5F5F;\">地址(Add)：广西南宁市建政路31号<br>
            电话(Tel)：0771-5612602<br>
            传真(Fax)：0771-5626864<br>
            </a><a style=\"color:#5F5F5F;\" target=\"_blank\" rel=\"nofollow\" href=\"http://www.miitbeian.gov.cn/\">备案号：桂ICP备09011153号</a></li>
        </div>
    </div>
</div>\r\n");


	ViewBuilder.Append("
  <script type=\"text/javascript\" src=\"" + webpath.ToString() + "sites/gxeqgyls/statics/js/scroll.js\"></");
	ViewBuilder.Append("script>
</div>
</body>
</html>
\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
