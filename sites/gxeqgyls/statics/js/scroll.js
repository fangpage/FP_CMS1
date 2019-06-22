$(function(){
      $(".pic").imgPlayer({
        iconOpacity:'0.7',     //图标显示的透明度
        activeIconOpacity:'0.8', //激活时图标显示的透明度
        iconColor:'#ffffff',   //图标的颜色
        iconFontColor:'#090b42', //图标字体的颜色
        activeIconColor:'#3370c0',//激活时图标的颜色
        width:465,
        height:313
      });

      $(".tab_menu li").hover(function()
        {
          $(".tab_box div").eq($(this).index()-1).show().addClass("current").siblings().hide().removeClass("current");
          $(this).addClass("current").siblings().removeClass("current");
        });
    })

function DY_scroll(wraper,prev,next,img,speed,or)
 { 
  var wraper = $(wraper);
  var prev = $(prev);
  var next = $(next);
  var img = $(img).find('ul');
  var w = img.find('li').outerWidth(true);
  var s = speed;
  next.click(function()
       {
        img.animate({'margin-left':-w},function()
                  {
                   img.find('li').eq(0).appendTo(img);
                   img.css({'margin-left':0});
                   });
        });
  prev.click(function()
       {
        img.find('li:last').prependTo(img);
        img.css({'margin-left':-w});
        img.animate({'margin-left':0});
        });
  if (or == true)
  {
   ad = setInterval(function() { next.click();},s*1000);
   wraper.hover(function(){clearInterval(ad);},function(){ad = setInterval(function() { next.click();},s*1000);});
  }
 }
 DY_scroll('.img-scroll','.prev','.next','.img-list',3,true);// true为自动播放，不加此参数或false就默认不自动

$(function(){
				   
			$('.nav ul li').hover(function()
			 {
			   $(this).find('ul').show();	
			 },
			function( ){$(this).find('ul').hide();});
		});// JavaScript Document

	var focusScroll_01 = new ScrollPic();
	focusScroll_01.scrollContId   = "FS_Cont_01"; //内容容器ID
	focusScroll_01.arrLeftId      = "FS_arr_left_01";//左箭头ID
	focusScroll_01.arrRightId     = "FS_arr_right_01"; //右箭头ID
	focusScroll_01.dotListId      = "FS_numList_01";//点列表ID
	focusScroll_01.dotClassName   = "";//点className
	focusScroll_01.dotOnClassName	= "selected";//当前点className
	focusScroll_01.listType		= "number";//列表类型(number:数字，其它为空)
	focusScroll_01.listEvent      = "onmouseover"; //切换事件
	focusScroll_01.frameWidth     = 465;//显示框宽度
	focusScroll_01.pageWidth      = 465; //翻页宽度
	focusScroll_01.upright        = false; //垂直滚动
	focusScroll_01.speed          = 10; //移动速度(单位毫秒，越小越快)
	focusScroll_01.space          = 30; //每次移动像素(单位px，越大越快)
	focusScroll_01.autoPlay       = true; //自动播放
	focusScroll_01.autoPlayTime   = 5; //自动播放间隔时间(秒)
	focusScroll_01.initialize(); //初始化
	
var phpcms_path = '/';
var cookie_pre = 'sYQDUGqqzH';
var cookie_domain = '';
var cookie_path = '/';
function getcookie(name) {
    name = cookie_pre+name;
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while(i < clen) {
		var j = i + alen;
		if(document.cookie.substring(i, j) == arg) return getcookieval(j);
		i = document.cookie.indexOf(" ", i) + 1;
		if(i == 0) break;
	}
	return null;
}

function setcookie(name, value, days) {
    name = cookie_pre+name;
	var argc = setcookie.arguments.length;
	var argv = setcookie.arguments;
	var secure = (argc > 5) ? argv[5] : false;
	var expire = new Date();
	if(days==null || days==0) days=1;
	expire.setTime(expire.getTime() + 3600000*24*days);
	document.cookie = name + "=" + escape(value) + ("; path=" + cookie_path) + ((cookie_domain == '') ? "" : ("; domain=" + cookie_domain)) + ((secure == true) ? "; secure" : "") + ";expires="+expire.toGMTString();
}

function delcookie(name) {
    var exp = new Date();
	exp.setTime (exp.getTime() - 1);
	var cval = getcookie(name);
    name = cookie_pre+name;
	document.cookie = name+"="+cval+";expires="+exp.toGMTString();
}

function getcookieval(offset) {
	var endstr = document.cookie.indexOf (";", offset);
	if(endstr == -1)
	endstr = document.cookie.length;
	return unescape(document.cookie.substring(offset, endstr));
}
