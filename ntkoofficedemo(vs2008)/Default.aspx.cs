﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;

/*
关于树的一些说明：
大致分类有： 管理制度、精益车间创建、项目管理、IE、绩效项目管理平台、拉动管理、学习培训、物与信息流动图、卓越绩效、
标准化作业（汇总）、办公模板、管理创新奖、用户满意度、上报公司、其它、照片
*/

namespace ntkoofficedemo_vs2008_
{
    public partial class _Default : System.Web.UI.Page
    {
        public string title, htmlpath, pdfpath, str_where;

        DataSet ds1 = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet ds3 = new DataSet();
        DataSet ds4 = new DataSet();
        DataSet ds_tree = new DataSet();
        ntko_class db = new ntko_class();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList1 目录1
            //DropDownList2 目录2
            //DropDownList3 目录3
            //DropDownList4 标签
            if (!this.IsPostBack)
            {
                ds1 = db.dataset("select * from [dzsw].[dbo].[JY_Classinfo] where ClassLevel=1");
                ds4 = db.dataset(" select [TagsOne] as tags  from[dzsw].[dbo].[JY_BookInfo]  union  select[TagsTwo] as tags  from[dzsw].[dbo].[JY_BookInfo]  union  select[TagsThr] as tags  from[dzsw].[dbo].[JY_BookInfo]  order by tags asc");
                user_id.Text = Session["user_id"].ToString();
                user_stu.Text = Session["user_stu"].ToString();
                user_name.Text = Session["user_name"].ToString();
                user_dep.Text = Session["user_dep"].ToString();
                user_role.Text = Session["user_role"].ToString();
                user_name.ToolTip = user_dep.Text + user_role.Text;

                try
                {
                    title = db.getdemotitle();
                    htmlpath = db.gethtmlpath();
                    pdfpath = db.getpdfpath();

                    str_where = "";

                    this.DropDownList1.DataSource = ds1.Tables[0].DefaultView;
                    this.DropDownList1.DataTextField = "ClassName";
                    this.DropDownList1.DataValueField = "CompleteNo";
                    this.DropDownList1.DataBind();
                    this.DropDownList1.Items.Insert(0, "所有记录");
                    this.DropDownList4.DataSource = ds4.Tables[0].DefaultView;
                    this.DropDownList4.DataTextField = "tags";
                    //this.DropDownList4.DataValueField = "Id";
                    this.DropDownList4.DataBind();
                    this.DropDownList4.Items.Insert(0, "所有记录");
                    this.DropDownList2.Items.Insert(0, "所有记录");
                    this.DropDownList3.Items.Insert(0, "所有记录");
                    //trev_cat.DataSource= ds1.Tables[0].DefaultView;
                    //for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                    //    string ss = ds1.Tables[0].Columns[i].ToString();
                    //    TreeNode tn = new TreeNode();
                    //    trev_cat.Nodes.Add(tn);
                }
                catch (Exception er)
                {
                    Response.Redirect("err404.aspx");
                    Response.Redirect(er.Message.ToString());

                }
            }
            //ds_tree = db.dataset("sql");
            
        }

        public Boolean tree_insert_items(ArrayList items,TreeNode nd,int position) 
            //items:要加入的结点集合。nd:要挂在哪哪结点下，position:插入原有结点哪个位置
        {
            
            return true;
        }
        public Boolean tree_build(DataSet ds)
            //构造树结构数据准备，要求两列数据，一列TREE.TEXT,一列TREE.VALUE
        {

            return true;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList1.SelectedItem.Text.ToString().Trim() != "所有记录")
                {
                    ds2 = db.dataset("select * from [dzsw].[dbo].[JY_Classinfo] where ClassLevel=2 and CompleteNo/1000="
                        + DropDownList1.SelectedItem.Value);
                    this.DropDownList2.DataSource = ds2.Tables[0].DefaultView;
                    this.DropDownList2.DataTextField = "ClassName";
                    this.DropDownList2.DataValueField = "CompleteNo";
                    this.DropDownList2.DataBind();
                    this.DropDownList2.Items.Insert(0, "所有记录");
                    this.DropDownList3.Items.Clear();
                    this.DropDownList3.Items.Insert(0, "所有记录");

                }
                else
                {
                    this.DropDownList2.Items.Clear();
                    this.DropDownList2.Items.Insert(0, "所有记录");
                    this.DropDownList3.Items.Clear();
                    this.DropDownList3.Items.Insert(0, "所有记录");
                }
                Button1_Click(null, null);

            }
            catch (Exception er)
            {
                Response.Redirect("err404.aspx");
                Response.Redirect(er.Message.ToString());
            }
          
   
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList2.SelectedItem.Text.ToString().Trim() != "所有记录")
                {
                    ds3 = db.dataset("select * from [dzsw].[dbo].[JY_Classinfo] where ClassLevel=3 and CompleteNo/1000="
                        + DropDownList2.SelectedItem.Value);

                    this.DropDownList3.DataSource = ds3.Tables[0].DefaultView;
                    this.DropDownList3.DataTextField = "ClassName";
                    this.DropDownList3.DataValueField = "CompleteNo";
                    
                    this.DropDownList3.DataBind();
                    this.DropDownList3.Items.Insert(0, "所有记录");




                }

                else
                {
                    this.DropDownList3.Items.Clear();
                    this.DropDownList3.Items.Insert(0, "所有记录");
                }
                Button1_Click(null, null);
 }
            catch(Exception er)
            {
                Response.Redirect("err404.aspx");
                Response.Redirect(er.Message.ToString());
            }
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            str_where = "";
            if (DropDownList1.SelectedItem.Text.Trim() != "所有记录")
                str_where += " and ClassOneNo='" + DropDownList1.SelectedItem.Value.ToString().Trim() + "'";
            if (DropDownList2.SelectedItem.Text.Trim() != "所有记录")
                str_where += " and  ClassTwoNo='" + DropDownList2.SelectedItem.Value.ToString().Trim() + "'";
            if (DropDownList3.SelectedItem.Text.Trim() != "所有记录")
                str_where += " and ClassThrNo='" + DropDownList3.SelectedItem.Value.ToString().Trim() + "'";

            if (DropDownList4.SelectedItem.Text.Trim() != "所有记录")
            {
                str_where += " and (TagsOne='" + DropDownList4.SelectedItem.Text.ToString().Trim() + "'";
                str_where += "or TagsTwo='" + DropDownList4.SelectedItem.Text.ToString().Trim() + "'";
                str_where += "or TagsThr='" + DropDownList4.SelectedItem.Text.ToString().Trim() + "')";
            }
            if (TextBox1.Text != "")
                str_where += " and fileNa like '%" + TextBox1.Text.Trim() + "%'";

           
           
        }

        //获取数据库文件列表
        public string getFilesList()
        {
            string sRet = "";
            string short_filename = "";
            SqlDataReader dr = db.datareader("  select  top 20 * from [dzsw].[dbo].[JY_BookInfo] where fileFormats in ('.docx', '.doc', '.xls', '.xlsx','.pptx','.ppt' ) " + str_where + " ORDER BY UpdateDate desc");
            try
            {
                while (dr.Read())
                {
                    //由于会出现过长文件名，下面IF语句用于处理过长文件名，以便显示美观
                    if (Convert.ToString(dr["fileNa"]).Length >40)
                        short_filename = Convert.ToString(dr["fileNa"]).Substring(0,40) + "...";
                    else
                        short_filename = Convert.ToString(dr["fileNa"]);

                   string fid = dr["fileNo"].ToString();
                
                        sRet += "<div height=\"60px\" onmouseover='this.className=\"mouseover\"' onmouseout='this.className=\"mouseout\"'>"
                               //+ " <img width=\"30px\" height=\"30px\" src=\"images/"+dr["fileFormats"]+ ".png\"style=\"margin-bottom:-5px; \"/> <a href=\"readoffice.aspx?officetype=1&url=" + fid
                                + " <a href=\"readoffice.aspx?officetype=1&url=" + fid

                               + "\"  target=_blank>&nbsp;" + short_filename + "&nbsp;</a>" + "</div>";
                }
            }
            catch (Exception er)
            {
                Response.Redirect("err404.aspx");
                Response.Redirect(er.Message.ToString());

            }
            finally
            {
                if (dr != null) db.close();
            }
            return sRet;
        }

        public string getCatalogTree()
        //用于生成导航用树，目前来看，可以用鼠标事件加get_list()方法实现。最后确定于版块内容是全动态生成还是部分生成。
        //全动态数据来源于查找中的DDL1-DLL4，存在的问题有两点：1，目前数据库资料种类缺乏，大部分版代码无法完成测试。
        //2，动态填充，代码复杂，页面局部刷新不好控制。
        {
            return "";
        }
        public string get_list(DataSet ds, int disp_x, int disp_y)
        {

            return "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        public string get_div_files()
        {
            return "";
        }
        //获取数据库热点文件列表
        public string getHotFile()
        {
            string sRet = "";
            SqlDataReader dr = db.datareader("  select  top 20 * from [dzsw].[dbo].[JY_BookInfo] where fileFormats in ('.docx', '.doc', '.xls', '.xlsx','.pptx','.ppt' ) and hotspot>0 " + str_where + " ORDER BY UpdateDate desc");
            try
            {
                while (dr.Read())
                {

                    string fid = dr["fileNo"].ToString();

                    sRet += "<div height=\"60px\" onmouseover='this.className=\"mouseover\"' onmouseout='this.className=\"mouseout\"'>"
                           + " <img width=\"30px\" height=\"30px\" src=\"images/" + dr["fileFormats"] + ".png\"style=\"margin-bottom:-5px; \"/> <a href=\"readoffice.aspx?officetype=1&url=" + fid
                           + "\"  target=_blank>&nbsp;" + dr["fileNa"] + "&nbsp;</a>" + "</div>";
                }
            }
            catch (Exception er)
            {
                Response.Redirect("err404.aspx");
                Response.Redirect(er.Message.ToString());

            }
            finally
            {
                if (dr != null) db.close();
            }
            return sRet;
        }
        //获取数据库中视频文件列表
        public string getHtmlList()
        {
            string sRet = "";
            SqlDataReader dr = db.datareader("select top 20 * from[dzsw].[dbo].[JY_BookInfo] where fileFormats in ('.rmvb','.wmv','.rm','.avi') " + str_where+ " ORDER BY UpdateDate desc  ");

            try
            {
                while (dr.Read())
                {

                    if (dr["fileFormats"].ToString().Trim() == ".rmvb" )
                    {
                        string fid = dr["fileNo"].ToString();
                     

                        sRet += "<div height=\"60px\" onmouseover='this.className=\"mouseover\"' onmouseout='this.className=\"mouseout\"'>"

                       + " <img width =\"25px\" height=\"30px\" src=\"images/" + dr["fileFormats"] + ".png\" style=\"margin-bottom:0px; \" /> "
                       +" <a href=\"rp.aspx?officetype=1&url=" + fid + "\" target =_blank>&nbsp;" + dr["fileNa"] + "&nbsp;</a>" + "</div>";
                    }
                   
                    if (dr["fileFormats"].ToString().Trim() == ".wmv" )
                    {
                        string fid = dr["fileNo"].ToString();
                        
                       
                        sRet += "<div height=\"60px\" onmouseover='this.className=\"mouseover\"' onmouseout='this.className=\"mouseout\"'>"

                       +" <img width=\"25px\" height=\"30px\" src=\"images/" + dr["fileFormats"] + ".png\"style=\"margin-bottom:0px; \"/> "
                       +" <a href=\"wmp.aspx?officetype=1&url=" + fid + "\" target=_blank>&nbsp;" + dr["fileNa"] + "&nbsp;</a>" + "</div>";


                    }
                  

                }
            }
            catch (Exception er)
            {
                Response.Redirect("err404.aspx");
                Response.Redirect(er.Message.ToString());

            }
            finally
            {
                if (dr != null) db.close();
            }
            return sRet;
        }
        //获取数据库中pdf文件列表
        /*      public string getPdfList()
             {
                 string sRet = "";
                 SqlDataReader dr = db.datareader("select * from pdfs ORDER BY pid");
                 try
                 {
                     while (dr.Read())
                     {
                         string pid = dr["pid"].ToString();
                         sRet += "<tr onmouseover='this.className=\"mouseover\"' onmouseout='this.className=\"mouseout\"'><td width='25%'>" + dr["ptitle"] + "</td><td width='30%'>" + dr["ptime"] + "</td><td width='20%'>" + dr["psize"] + " Bytes</td><td width='25%'>"
                             + "<a href=\"" + pdfpath + "/" + dr["pname"] + "\" target=_blank>&nbsp;阅  读&nbsp;</a>"
                                 + "<a href=\"delete.aspx?savetype=3&url=" + pid + "\" target=_blank>&nbsp;删  除&nbsp;</a>" + "</td></tr>";
                     }
                 }
                 finally
                 {
                     if (dr != null) db.close();
                 }
                 return sRet;
             }
             */

    }
}
