<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ntkoofficedemo_vs2008_._Default" %>

<%@ Register Assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" Namespace="System.Web.UI.WebControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="IE=7" http-equiv="X-UA-Compatible" />
    <title><%=title%>&nbsp; 文件首页列表</title>
    <script language="javascript" type="text/javascript" src="ntko.js"></script>
    <style type="text/css">
        a:link {
            text-decoration: none;
            color: gray;
        }

        a:visited {
            text-decoration: none;
            color: black;
        }

        a:hover {
            text-decoration: underline;
            color: red;
        }
        .auto-style1 {
            width: 600px;
            height: 400px;
            overflow: auto;
        }
        .auto-style2 {
            width: 980px;
            height: auto;
            float: none;
            top: 0;
        }
        .auto-style3 {
            width: 100%;
            height: 40px;
            float: none;
            bottom: 136px;
            position: fixed;
            z-index: 0;
            left: 0;
        }
        .daohang ul{list-style:none;width:980px;font-size:small;}
.daohang li{float:left;width:80px;background:#CCC;margin-left:3px;line-height:25px;}
.daohang a{display:block;text-align:center;height:25x;}
/*.daohang a:link{color:#666;background:url(arrow_off.gif) #CCC no-repeat 5px 12px;text-decoration:none;}*/
.daohang a:visited{color:#666;text-decoration:underline;}
/*.daohang a:hover{color:#FFF; font-weight:bold;text-decoration:none;background:url(arrow_on.gif) #F00 no-repeat 5px 12px;}*/
    </style>
</head>
<body>
   
    <form id="form1" runat="server" style="text-align: center; margin: 0 auto;">
        <div>
            <div style="text-align: right; background-color:darkslategrey;text-align: center; width: 100%; height: 40px; float: none; top: 0; position: fixed; z-index: 0; left: 0;">

                <table style="width: 980px; height: 40px; top: 0; margin: 0 auto;">
                    <tr>
                        <td style="width: 30%"></td>
                        <td style="width: 40%"></td>
                        <td style="text-align: right; width: 250px;">

                            <asp:Label ID="Label3" runat="server" Text="  用户:" ForeColor="White" Font-Size="Smaller"></asp:Label>
                            <asp:Label ID="user_name" runat="server" ForeColor="White" Font-Size="Smaller" ></asp:Label>
                            <asp:Label ID="user_stu" runat="server" ForeColor="White" Font-Size="Smaller"></asp:Label>
                        </td>
                    </tr>
                </table>
              

            </div>



            <div style="top:45px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/default_banner.jpg" />
            </div>
            <%--<div>
        <asp:LinkButton ID="LinkButton1" runat="server" EnableTheming="False" EnableViewState="False">管理制度</asp:LinkButton>
      <asp:LinkButton ID="LinkButton2" runat="server" EnableTheming="False" EnableViewState="False">精益车间创建</asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" runat="server" EnableTheming="False" EnableViewState="False">项目管理</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" EnableTheming="False" EnableViewState="False">IE</asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" runat="server" EnableTheming="False" EnableViewState="False">绩效项目管理平台</asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" runat="server" EnableTheming="False" EnableViewState="False">拉动管理</asp:LinkButton>
        <asp:LinkButton ID="LinkButton7" runat="server" EnableTheming="False" EnableViewState="False">学习培训</asp:LinkButton>
        <asp:LinkButton ID="LinkButton8" runat="server" EnableTheming="False" EnableViewState="False">物与信息流动图</asp:LinkButton>
        <hr>
        <asp:LinkButton ID="LinkButton9" runat="server" EnableTheming="False" EnableViewState="False">卓越绩效</asp:LinkButton>
        <asp:LinkButton ID="LinkButton10" runat="server" EnableTheming="False" EnableViewState="False">标准化作业（汇总）</asp:LinkButton>
        <asp:LinkButton ID="LinkButton11" runat="server" EnableTheming="False" EnableViewState="False">办公模板</asp:LinkButton>
        <asp:LinkButton ID="LinkButton12" runat="server" EnableTheming="False" EnableViewState="False">管理创新奖</asp:LinkButton>
        <asp:LinkButton ID="LinkButton13" runat="server" EnableTheming="False" EnableViewState="False">用户满意度</asp:LinkButton>
        <asp:LinkButton ID="LinkButton14" runat="server" EnableTheming="False" EnableViewState="False">上报公司</asp:LinkButton>
        <asp:LinkButton ID="LinkButton15" runat="server" EnableTheming="False" EnableViewState="False">其它</asp:LinkButton>
        <asp:LinkButton ID="LinkButton16" runat="server" EnableTheming="False" EnableViewState="False">照片</asp:LinkButton>
    </div>--%>

            <div style="text-align: center;width:980px; margin: 0 auto; height: 30px">
                <span>文档检索</span>
                &nbsp;&nbsp;
                <span>目录：</span>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100px">
                </asp:DropDownList>

                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="100px">
                </asp:DropDownList>

                <asp:DropDownList ID="DropDownList3" runat="server" Width="100px">
                </asp:DropDownList>
                &nbsp;&nbsp;
                <span>标签：</span>
                <asp:DropDownList ID="DropDownList4" runat="server" Width="100px" OnSelectedIndexChanged="Button1_Click">
                </asp:DropDownList>
                &nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="查找" OnClick="Button1_Click" Width="86px" Height="26px" />
            </div>


            <hr size="1" style="background-color: #000000"  width="980px" />


            <div id="file_list" style="text-align: left; margin: 0 auto; " class="auto-style2">
                <table style="top:0;">
                     <tr style="vertical-align:top;">
                        <td>
                           
                            <div id="tre_cat" class="menu" style="font-size:medium;width: 200px;line-height:30px; height: auto; text-align: left; float: none; margin: 0 auto; top: 0; background-color: #CCCCCC; background-image: url('http://localhost:4489/images/catalog_tree_ground.jpg'); font-family: 幼圆; font-weight: bold;">
                                    <%=getCatalogTree() %>
                                  <%--  <ul id="ul_daohang_list">
                                        <li id="li_glzd" ><a  href="#guanlizhidu" target="_self">1.管理制度</a></li>
                                        <li id="li_jycjcj"><a   href="#jingyichejianchuangjian" target="_self">2.精益车间创建</a></li>
                                        <li id="li_xmgl"><a  href="#xiangmuguanli" target="_self" >3.项目管理</a></li>
                                        <li id="li_IE" ><a href="#IE" target="_self">4.IE</a></li>
                                        <li id="li_jxglpt"><a  href="#jixiaoguanlipingtai" target="_self">5.绩效管理平台</a></li>
                                        <li id="li_ldgl" ><a  href="#ladongguanli" target="_self">6.拉动管理</a></li>
                                        <li id="li_xxpx" ><a href="#xuexipeixun" target="_self">7.学习培训</a></li>
                                        <li id="li_wyxxld"><a  href="#wuyuxinxiliudong" target="_self">8.物与信息流动</a></li>
                                        <li id="li_zyjx"><a  href="#zhuoyuejixiao" target="_self">9.卓越绩效</a></li>
                                        <li id="li_bzhzy" ><a  href="#biaozhunhuazhuoye" target="_self">10.标准化作业</a></li>
                                        <li id="li_other"><a   href="#qita" target="_self">11.其它</a></li>
                                      
                                    </ul>--%>
                               

                            </div>
           
                        </td>
                        <td>
                             <div id="wendangzhiliao">
                               <span>文档资料：</span>
                            </div>
                            <div id="wendangzhiliao_content"  style="text-align: left; width: 600px; line-height:30px; height:400px; overflow: auto; font-size: small;">

                                <%=getFilesList() %>
                            </div>
                            <div id="guanlizhidu" style="display: inline; float:none;height:40px;">    
                                    <ul style="list-style: none;width:200px;display: inline; float:none;height:40px;">
                                        <li id="glzd_gszd"  style="display: inline; float:none;height:40px;width:50px;"><a>公司制度</a></li>
                                        </ul> 
                                         <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="glzd_cjzd"  style="display: inline; float:none; height:40px;width:50px;"><a>厂级制度</a></li>
                                    </ul> 
                               </div>                               
                             <div id="guanlizhidu_content" style="text-align: left; line-height: 40px; " >                                                              
                                 <%=getFilesList() %>
                            </div>
                            
                            
                            
                            <div id="jingyichejianchuangjian" style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="jyzjcj_lt1b"  style="display: inline; float:none; height:40px;width:50px;"><a>炼铁一部</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="jyzjcj_lh2b"  style="display: inline; float:none; ;height:40px;width:50px;"><a>炼铁二部</a></li>
                                    

                                    </ul>
                                     <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="jyzjcj_sjyb"  style="display: inline; float:none; ;height:40px;width:50px;"><a>烧结一部</a></li>
                                    

                                    </ul>
                                       
                                         <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="jyzjcj_sj2b"  style="display: inline; float:none; height:40px;width:50px;"><a>烧结二部</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="jyzjcj_sylzyb"  style="display: inline; float:none; ;height:40px;width:50px;"><a>原料作业部</a></li>
                                    

                                    </ul>
                                      <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="jyzjcj_ylzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>运料作业部</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="jyzjcj_pmzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>喷煤作业部</a></li>
                                    

                                    </ul>
                                      <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="jyzjcj_bhzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>白灰作业部</a></li>
                                    

                                    </ul>

                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="jyzjcj_wjb"  style="display: inline; float:none; height:40px;width:50px;"><a>维检部</a></li>
                                    

                                    </ul>
                                            <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="jyzjcj_zdhb"  style="display: inline; float:none; height:40px;width:50px;"><a>自动化部</a></li>
                                    

                                    </ul>
                                     
                                </div>
                            <div id="jingyichejianchuangjian_content" style="text-align: left; line-height:30px; font-size: small;" class="auto-style1">
                                 
                                 <%=getFilesList() %>
                            </div>
                               <div id="xiangmuguanli" style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="xmgl_zd"  style="display: inline; float:none; height:40px;width:50px;"><a>制度</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none;height:40px;">
                                        <li id="xmgl_2017"  style="display: inline; float:none;height:40px;width:50px;"><a>2017</a></li>
                                    

                                    </ul>
                                          <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="xmgl_2016"  style="display: inline; float:none;height:40px;width:50px;"><a>2016</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="xmgl_2015"  style="display: inline; float:none;height:40px;width:50px;"><a>2015</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="xmgl_2014"  style="display: inline; float:none;height:40px;width:50px;"><a>2014</a></li>
                                    

                                    </ul>
                                </div>
                                <div id="xiangmuguanli_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                               
                               
                                 <%=getFilesList() %>
                            </div>
                               <div id="IE" style="display: inline; float:none; height:40px;">    
                                       <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_lt1b"  style="display: inline; float:none; height:40px;width:50px;"><a>炼铁一部</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_lh2b"  style="display: inline; float:none; height:40px;width:50px;"><a>炼铁二部</a></li>
                                    

                                    </ul>
                                     <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_sj1b"  style="display: inline; float:none; height:40px;width:50px;"><a>烧结一部</a></li>
                                    

                                    </ul>
                                       
                                         <ul style="list-style: none;width:200px;display: inline; float:none;height:40px;">
                                        <li id="IE_sj2b"  style="display: inline; float:none; height:40px;width:50px;"><a>烧结二部</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_ylzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>原料作业部</a></li>
                                    

                                    </ul>
                                      <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_sylzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>运料作业部</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_pmzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>喷煤作业部</a></li>
                                    

                                    </ul>
                                      <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_bhzyb"  style="display: inline; float:none;height:40px;width:50px;"><a>白灰作业部</a></li>
                                    

                                    </ul>

                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_wjb"  style="display: inline; float:none; height:40px;width:50px;"><a>维检部</a></li>
                                    

                                    </ul>
                                            <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="IE_zdhb"  style="display: inline; float:none;height:40px;width:50px;"><a>自动化部</a></li>
                                    

                                    </ul>
                                </div>
                                <div id="IE_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                               
                               
                                 <%=getFilesList() %>
                            </div>
                                <div id="jixiaoguanlipingtai"  style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="ptgl"  style="display: inline; float:none; height:40px;width:50px;"><a>平台管理</a></li>
                                    </ul>
                                </div>
                             <div id="jixiaoguanlipingtai_content" style="text-align: left; line-height: 40px; ">
                              
                                <%=getFilesList() %>
                            </div>
                              <div  id="ladongguanli" style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="gxld"  style="display: inline; float:none; height:40px;width:50px;"><a>工序拉动</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="qltb"  style="display: inline; float:none; height:40px;width:50px;"><a>期量图表</a></li>
                                    

                                    </ul>       
                                                 <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="wyxxldt"  style="display: inline; float:none; height:40px;width:50px;"><a>物与信息流程图</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="tqld"  style="display: inline; float:none; height:40px;width:50px;"><a>铁前拉动</a></li>
                                    

                                    </ul>   
                                                 <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="gtld"  style="display: inline; float:none; height:40px;width:50px;"><a>铁钢拉动</a></li>
                                    

                                    </ul>
                                    
                                </div>
                                 <div id="ladongguanli_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                             <%=getFilesList() %>
                            </div>
                               <div  id="xuexipeixun" style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="cjpx"  style="display: inline; float:none; height:40px;width:50px;"><a>厂级培训</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="pxfk"  style="display: inline; float:none; height:40px;width:50px;"><a>培训反馈</a></li>
                                    

                                    </ul> 
                                                 <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="pxtj"  style="display: inline; float:none; height:40px;width:50px;"><a>培训统计</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="pxkj"  style="display: inline; float:none; height:40px;width:50px;"><a>培训课件</a></li>
                                    

                                    </ul>   
                                                 <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="pxxq"  style="display: inline; float:none; height:40px;width:50px;"><a>培训需求</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="wczl"  style="display: inline; float:none; height:40px;width:50px;"><a>外厂资料</a></li>
                                    

                                    </ul> 
                                                 <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="cjjpx"  style="display: inline; float:none; height:40px;width:50px;"><a>车间级培训</a></li>
                                    

                                    </ul>
                                          
                                </div>
                              <div id="xuexipeixun_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                               <%=getFilesList() %>
                            </div>
                           <div  id="wuyuxinxiliudong"  style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="wyxxldt_wuyuxinxiliudongtu"  style="display: inline; float:none; height:40px;width:50px;"><a>物与信息流动图</a></li>
                                    

                                    </ul>
                                      
                                </div>
                             <div id="wuyuxinxiliudongtu_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                                    <%=getFilesList() %>
                            </div>
                            <div  id="zhuoyuejixiao"  style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="zyjx_2017"  style="display: inline; float:none; height:40px;width:50px;"><a>2017</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="zyjx_2016"  style="display: inline; float:none; height:40px;width:50px;"><a>2016</a></li>
                                    

                                    </ul>   
                                           <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="zyjx_2015"  style="display: inline; float:none; height:40px;width:50px;"><a>2015</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="zyjx_2014"  style="display: inline; float:none; height:40px;width:50px;"><a>2014</a></li>
                                    

                                    </ul>     
                                </div>
                                 <div id="zhuoyuejixiao_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                               <%=getFilesList() %>
                            </div>
                          <div  id="biaozhunhuazhuoye"  style="display: inline; float:none; ;height:40px;">    
 <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_lt1b"  style="display: inline; float:none; height:40px;width:50px;"><a>炼铁一部</a></li>
                                    

                                    </ul>
                                        <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_lh2b"  style="display: inline; float:none; height:40px;width:50px;"><a>炼铁二部</a></li>
                                    

                                    </ul>
                                     <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_sj1b"  style="display: inline; float:none; height:40px;width:50px;"><a>烧结一部</a></li>
                                    

                                    </ul>
                                       
                                         <ul style="list-style: none;width:200px;display: inline; float:none;height:40px;">
                                        <li id="bzhzy_sj2b"  style="display: inline; float:none; height:40px;width:50px;"><a>烧结二部</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_ylzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>原料作业部</a></li>
                                    

                                    </ul>
                                      <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_sylzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>运料作业部</a></li>
                                    

                                    </ul>
                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_pmzyb"  style="display: inline; float:none; height:40px;width:50px;"><a>喷煤作业部</a></li>
                                    

                                    </ul>
                                      <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_bhzyb"  style="display: inline; float:none;height:40px;width:50px;"><a>白灰作业部</a></li>
                                    

                                    </ul>

                                        <ul  style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_wjb"  style="display: inline; float:none; height:40px;width:50px;"><a>维检部</a></li>
                                    

                                    </ul>
                                            <ul style="list-style: none;width:200px;display: inline; float:none; height:40px;">
                                        <li id="bzhzy_zdhb"  style="display: inline; float:none;height:40px;width:50px;"><a>自动化部</a></li>
                                    

                                    </ul>
                                </div>
                                 <div id="biaozhunhuazhuoye_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                                 <%=getFilesList() %>
                            </div>

                              <div  id="qita"  style="display: inline; float:none; height:40px;">    
                                        <ul style="list-style: none;width:200px;display: inline; float:none; ;height:40px;">
                                        <li id="qt"  style="display: inline; float:none;height:40px;width:50px;"><a>其它</a></li>
                                    

                                    </ul>
                                   </div>
                              <div id="qita_content" style="text-align: left; line-height: 40px; " class="auto-style1">
                                <%=getFilesList() %>
                            </div>
                        </td>
                        <td style="top:0;">

                            <div style="width: 200px; height:200px; text-align: left; float: none; margin: 0 auto; top: 0; font-size: small; background-image: url('images/catalog_tree_ground.jpg'); background-repeat: no-repeat;">
                                <span>热点：</span>
                                <table>
                                    <tr>
                                        <td>
                                            <div style="text-align: left;top:0;" >
                                                <%=getHotFile() %>
                                               
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                             <div id="lsv_tag" style="width: 200px; height: 200px; text-align: left; float: none; margin: 0 auto; top: 0; font-size: small; background-image: url('images/catalog_tree_ground.jpg');">
                                  <span>标签：</span>
                                 </div> 
                        </td>

                    </tr>
                </table>
            </div>
            <%--<div >
             <asp:Image ID="Image4" runat="server" ImageUrl="~/images/def_cont_slip.jpg" />
         </div>--%>
           <%-- <div style="width: 980px; height: auto; text-align: left; float: none; margin: 0 auto; top: 0;">
                <table>
                    <tr>
                        <td style="text-align: left;">
                            <span>热点推荐：</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="text-align: left; width: auto; height: 400px; overflow: auto;">
                                <%=getHotFile() %>
                            </div>
                        </td>
                    </tr>
                </table>

            </div>--%>
            <%--   <div >
             <asp:Image ID="Image2" runat="server" ImageUrl="~/images/def_cont_slip2.jpg" />
         </div>--%>
            <%--  <div style="width:980px;height:auto;text-align:left;float:none;margin:0 auto;top:0;">
             <table>
                 <tr>
                     <td style="text-align:left;">
<span>视频资料：</span>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <div  style="text-align:left;width:auto;height:400px;overflow:auto;">
                        <%=getHtmlList()%>
                             </div>
                     </td>
                 </tr>
             </table>

         </div>  --%>
            <div>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/def_cont_slip.jpg" Height="30px" Width="980px" />
            </div>
            <%--<div >--%>             <%--   <span>PDF文件列表:</span>
            <table class="tabletitle">
               <tr><td width="25%">文&nbsp;件&nbsp;标&nbsp;题</td><td width="30%">创&nbsp;建&nbsp;日&nbsp;期</td><td width="20%">文&nbsp;件&nbsp;大&nbsp;小</td><td width="25%">相&nbsp;关&nbsp;操&nbsp;作</td></tr>
           </table>
           <table>
               <!--PDF文件列表数据-->
                <%=getPdfList()%>
           </table>--%>           <%--</div>--%>

            <%--<div ><iframe name="readpage" style="height:800px; width:900px"></iframe> </div>--%>
            <hr size="1" style="background-color: #000000" width="980px"/>
            <div style="text-align: center; width: 980px; height: 100px; vertical-align: top;margin:auto;">

                <asp:Label ID="Label1" runat="server" Text="精益资料查阅平台" Font-Bold="False" Font-Size="Medium"></asp:Label>

                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="自动化部(软件)" Font-Bold="False" Font-Size="Medium"></asp:Label>
            </div>
 <div style="text-align: right; background-color:darkslategrey;
text-align: center; width: 100%; height: 40px; float: none; bottom:0; position: fixed; z-index: 0; left: 0;">
     <div  class="daohang">
                                   <ul ><li id="li_glzd" > <a  href="#guanlizhidu" target="_self"> 管理制度 </a></li>
                                        <li id="li_jycjcj"> <a   href="#jingyichejianchuangjian" target="_self"> 精益车间创建 </a></li>
                                        <li id="li_xmgl"><a  href="#xiangmuguanli" target="_self" > 项目管理 </a></li>
                                        <li id="li_IE"  ><a href="#IE" target="_self"> IE </a></li>
                                        <li id="li_jxglpt" ><a  href="#jixiaoguanlipingtai" target="_self"> 绩效管理平台 </a></li>
                                        <li id="li_ldgl"  ><a  href="#ladongguanli" target="_self"> 拉动管理 </a></li>
                                        <li id="li_xxpx"  ><a href="#xuexipeixun" target="_self"> 学习培训 </a></li>
                                        <li id="li_wyxxld" ><a  href="#wuyuxinxiliudong" target="_self"> 物与信息流动 </a></li>
                                        <li id="li_zyjx"  ><a  href="#zhuoyuejixiao" target="_self"> 卓越绩效 </a></li>
                                        <li id="li_bzhzy"  ><a  href="#biaozhunhuazhuoye" target="_self"> 标准化作业 </a></li>
                                        <li id="li_other"  ><a   href="#qita" target="_self"> 其它 </a></li>
                                    </ul>

     </div>
 </div>
            <%-- 下面的DIV为隐藏部分--%>
            <div>
                <asp:Label ID="Label5" runat="server" Text="ID:" Visible="False" ForeColor="White"></asp:Label>
                <asp:Label ID="user_id" runat="server" Visible="False" ForeColor="White"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="  职务:" Visible="False" ForeColor="White"></asp:Label>
                <asp:Label ID="user_role" runat="server" Visible="False" ForeColor="White"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="  部门:" Visible="False" ForeColor="White"></asp:Label>
                <asp:Label ID="user_dep" runat="server" Visible="False" ForeColor="White"></asp:Label>
            </div>
        </div>
       

    </form>

</body>
</html>

