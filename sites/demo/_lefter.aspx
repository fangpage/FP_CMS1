<%set (SortInfo){leftsort}=SortBll.GetSortInfo(sortid) %>
<%if sortinfo.parentid>0 %>
<%set {leftsort}=SortBll.GetSortInfo(sortinfo.parentid) %>
<%/if %>
<div class="leftbox">
    <div class="leftbox_bt">
        <li><a target="_blank" href="#">${leftsort.name}</a></li>
    </div>
    <%if sortid==21 %>
    <div class="leftbox_nr">
        <div class="left_pic"></div>
        <div class="left_wz1">
            <ul>
                <li><a target="_blank" href="newslist.aspx?sortid=12">时政要闻</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=13">联社动态</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=14">行业动态</a></li>
            </ul>
        </div>
    </div>
    <%else if sortid==16||sortid==3||sortid==4||sortid==8||sortid==5||sortid==4 %>
    <div class="leftbox_nr">
        <div class="left_pic"></div>
        <div class="left_wz1">
            <ul>
                <li><a target="_blank" href="newslist.aspx?sortid=16">政策法规</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=3">工艺美术</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=4">职称改革</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=8">工作研究</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=5">直属学校</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=4">职称申报</a></li>
            </ul>
        </div>
    </div>
    <%else if sortid==9||sortid==22 %>
    <div class="leftbox_nr">
        <div class="left_pic"></div>
        <div class="left_wz1">
            <ul>
                <li><a target="_blank" href="newslist.aspx?sortid=9">来信咨询</a></li>
                <li><a target="_blank" href="newslist.aspx?sortid=22">调查征集</a></li>
            </ul>
        </div>
    </div>
    <%else %>
    <div class="leftbox_nr">
        <div class="left_pic"></div>
        <div class="left_wz1">
            <ul>
                <li><a target="_blank" href="articleinfo.aspx?sortid=18">主要职能</a></li>
                <li><a target="_blank" href="articleinfo.aspx?sortid=19">领导简介</a></li>
                <li><a target="_blank" href="articleinfo.aspx?sortid=20">机构设置</a></li>
                <li><a target="_blank" href="articleinfo.aspx?sortid=21">理事单位</a></li>
            </ul>
        </div>
    </div>
    <%/if %>
</div>
