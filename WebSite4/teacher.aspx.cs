using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void tC_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            for (int i = 0; i < e.Row.Cells.Count; i++)
            {
                //e.Row.Cells[i].Attributes.Add("onclick", "alert('行：" + (e.Row.RowIndex+58) + " 列：" + i + "')");
                e.Row.Cells[i].Attributes.Add("onclick", "window.location.href='studentList.aspx?num="+(e.Row.RowIndex+16)+"'");
            }
        }
    }
}