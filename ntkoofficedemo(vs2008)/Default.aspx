<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ntkoofficedemo_vs2008_._Default" %>

<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="IE=7" http-equiv="X-UA-Compatible" />
    <title><%=title%>&nbsp; 文件首页列表</title>
    <script language="javascript" type="text/javascript" src="ntko.js"></script>
    <style type="text/css" >
    a:link    { text-decoration: none;color:gray;}
a:visited { text-decoration: none;color:black;}
a:hover   { text-decoration:underline;color:red;}
        </style>
</head>
    <body > 
   <div style="text-align:right; background-color:darkslategrey;text-align:center; width: 100%; height:40px;float: none;top:0; position:fixed;z-index:0;left:0;" >
      
           <table style="width:980px; height:40px; top:0;margin:0 auto;">
               <tr>
                   <td style="width:30%" >
                    </td>
                   <td style="width:40%">

                   </td>
                   <td style="text-align:right;width:250px;">
 
               <asp:Label ID="Label3" runat="server" Text="  用户:" ForeColor="White" Font-Size="Smaller"></asp:Label>
              <asp:Label ID="user_name" runat="server" ForeColor="White" Font-Size="Smaller"></asp:Label>
              <asp:Label ID="user_stu" runat="server" ForeColor="White" Font-Size="Smaller"></asp:Label> 
                   </td>
               </tr>
           </table>c

 </div>  

     <form id="form1" runat="server" style="text-align:center;margin:0 auto; ">
               
          <div>
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

            <div  style="text-align:center;margin:0 auto;height:30px" >     
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
                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        
                              &nbsp;
                <asp:Button ID="Button1" runat="server" Text="查找" OnClick="Button1_Click" Width="86px" Height="26px"/>
                 </div>

   
 <hr size="1" style="background-color: #000000" />   
   

<div id="file_list" style="width:980px;height:auto;text-align:left; float:none;margin:0 auto;top:0;">
    <table>
        <%-- <tr>
            <td style="text-align:left;" class="auto-style1">
                  <span>文档资料:</span>
            </td>     
        </tr>--%>
        <tr>
            <td>
                <div id="tre_cat" style="width:150px;height:400px;text-align:left;float:none;margin:0 auto;top:0;">
                    <div class="wrap">

			
			<div class="menu"><ul id="menu-secondary-items" class="">
                <li id="menu-item-156" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-156"><a href="http://www.uisdc.com/category/hot-download">管理制度</a>
<ul class="sub-menu">
	<li id="menu-item-229" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-229"><a href="http://www.uisdc.com/category/hot-download/psd-download">11</a></li>
</ul>
</li>
<li id="menu-item-155" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-155"><a href="http://www.uisdc.com/category/uiicon">精益车间创建</a>
<ul class="sub-menu">
	<li id="menu-item-236" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-236"><a href="http://www.uisdc.com/category/uiicon/element-of-web-ui">项目管理</a></li>
	
</ul>
</li>

<li id="menu-item-50" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-50"><a href="http://www.uisdc.com/category/informations-guide">IE</a></li>
<li id="menu-item-51" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-51"><a href="http://www.uisdc.com/category/work-blueprint">绩效项目管理平台</a></li>
<li id="menu-item-153" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-153"><a href="http://www.uisdc.com/category/site-recommend">拉动管理</a></li>
<li id="menu-item-1" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">学习培训</a></li>
<li id="menu-item-2" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">物与信息流动图</a></li>
<li id="menu-item-3" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">卓越绩效</a></li>
                <li id="menu-item-4" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">标准化作业（汇总）</a></li>
                <li id="menu-item-5" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">办公模板</a></li>
                <li id="menu-item-6" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">管理创新奖</a></li>
                  <li id="menu-item-7" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">用户满意度</a></li>  
                <li id="menu-item-8" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">上报公司</a></li>  
                <li id="menu-item-9" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">其它</a></li>
                  <li id="menu-item-10" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-431"><a href="http://www.uisdc.com/category/books-recommend">照片</a></li>

</ul>


			</div>
			
		</div>
		
      </div>
            </td>
            <td >
<div  style="text-align:left;width:600px;height:400px;overflow:auto;">
                
                   <%=getFilesList() %>
     
         </div> </td>
                <td>
                  <div id="lsv_tag" style="width:150px;height:400px;text-align:left;float:none;margin:0 auto;top:0;">
                      </div> 
            </td>
    
        </tr>
    </table>
</div>
        <div >
             <asp:Image ID="Image4" runat="server" ImageUrl="~/images/def_cont_slip.jpg" />
         </div>
          <div style="width:980px;height:auto;text-align:left;float:none;margin:0 auto;top:0;">
             <table>
                 <tr>
                     <td style="text-align:left;">
<span>热点推荐：</span>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <div  style="text-align:left;width:auto;height:400px;overflow:auto;">
                             <%=getHotFile() %>
                             </div>
                     </td>
                 </tr>
             </table>

         </div>  
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
                    <div >
             <asp:Image ID="Image3" runat="server" ImageUrl="~/images/def_cont_slip.jpg" />
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
  <hr size="1" style="background-color: #000000" />   
     <div style="text-align:center;width:980px;height:100px;vertical-align:top;">
       
 <asp:Label ID="Label1" runat="server" Text="精益资料查阅平台" Font-Bold="False" Font-Size="Medium"></asp:Label>
  
    <br />
    <br />
     <asp:Label ID="Label2" runat="server" Text="自动化部(软件)" Font-Bold="False" Font-Size="Medium"></asp:Label>
     </div>
    
 

 </form>
       <%-- 下面的DIV为隐藏部分--%>
        <div>
            <asp:Label ID="Label5" runat="server" Text="ID:" Visible="False" ForeColor="White"></asp:Label> 
               <asp:Label ID="user_id" runat="server" Visible="False" ForeColor="White"></asp:Label>
              <asp:Label ID="Label6" runat="server" Text="  职务:" Visible="False" ForeColor="White"></asp:Label>
               <asp:Label ID="user_role" runat="server" Visible="False" ForeColor="White"></asp:Label>
              <asp:Label ID="Label4" runat="server" Text="  部门:" Visible="False" ForeColor="White"></asp:Label>
               <asp:Label ID="user_dep" runat="server" Visible="False" ForeColor="White"></asp:Label>
        </div>
 </body> 
</html>

