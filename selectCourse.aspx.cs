using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class selectCourse : System.Web.UI.Page   
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    //protected void Course_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    selectView.PageIndex = e.NewPageIndex;
    //    selectView.DataBind();
    //}
    //protected void selectView_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        if (e.Row.RowIndex >= 0)
    //        {
    //            //鼠标点击行改变行颜色 
    //            e.Row.Attributes.Add("onclick ", "c=style.backgroundColor;style.backgroundColor= 'red '; ");
    //        }
    //    }

    //}

    protected void selectView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                //e.Row.Cells[i].Attributes.Add("onclick", "alert('现在不是选课时间！')");
                e.Row.Cells[i].Attributes.Add("onclick", "window.location.href='selectOneCourse.aspx?num="+(e.Row.RowIndex+58)+"'");
            }
          }
     }
    
}
