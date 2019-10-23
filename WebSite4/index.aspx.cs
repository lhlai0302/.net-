using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected override void OnPreInit(EventArgs e)
    {
        String userId = null;
        if (Session["userId"] != null && Convert.ToString(Session["userId"]) != "")
        {
            userId = Convert.ToString(Session["userId"]);
            if(userId.Length == 8)
            {
                Page.MasterPageFile = "../MasterPageTeacher.master";
            }
        }
        base.OnPreInit(e);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
}