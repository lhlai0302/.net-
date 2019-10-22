using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Utility;
public partial class GradeEntry : System.Web.UI.Page
{
    SqlHelper helper = new Utility.SqlHelper();
    public static string connection = "Data Source=DESKTOP-SS8O6R6\\SQLEXPRESS;Initial Catalog=StudentSystem; User id = sa; Password = 917125317";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;
        //TODO: 从session获取
        int studentID = 1;

        string sqlQuery = "SELECT * FROM StudentCourse inner join Course on StudentID = @studentID and StudentCourse.CourseID = Course.CourseID";
        DataTable dt = helper.ExecuteDataTable(sqlQuery, CommandType.Text, new SqlParameter[] { new SqlParameter("@studentID", studentID) });
        StudentScore.DataSource = dt;
        StudentScore.DataBind();
    }

    
    protected void SelectCourse_OnChanged(object sender, EventArgs e)
    {
    }

    protected void StudentScore_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Edit(object sender, GridViewEditEventArgs e)
    {
       
    }
    protected void Cancel(object sender, GridViewCancelEditEventArgs e)
    {
        
    }
    protected void Update(object sender, GridViewUpdateEventArgs e)
    {
        
    }

    protected void GetData()
    {

       

    }
}