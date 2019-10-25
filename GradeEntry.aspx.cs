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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;
        //TODO: 从session获取
        string teacherID = null;
        if (Session["userId"] != null && Convert.ToString(Session["userId"]) != "")
        {
            teacherID = Convert.ToString(Session["userId"]);
        }

        string sqlQuery = "SELECT * FROM Course where TeacherID = @teacherID";
        DataTable dt = helper.ExecuteDataTable(sqlQuery, CommandType.Text, new SqlParameter[] { new SqlParameter("@teacherID", teacherID) });

        Hashtable ht = new Hashtable();
        ht.Add("NULL", null);
        foreach(DataRow dr in dt.Rows)
        {
            ht.Add(dr["CourseID"], dr["CourseName"]);
        }
        AllCourse.DataSource = ht;
        AllCourse.DataValueField = "key";
        AllCourse.DataTextField = "value";
        AllCourse.DataBind();
    }

    protected void SelectCourse_OnChanged(object sender, EventArgs e)
    {
        GetData();
    }

    protected void CourseStudent_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void Edit(object sender, GridViewEditEventArgs e)
    {
        CourseStudent.EditIndex = e.NewEditIndex;
        GetData();
    }
    protected void Cancel(object sender, GridViewCancelEditEventArgs e)
    {
        CourseStudent.EditIndex = -1;
        GetData();
    }
    protected void Update(object sender, GridViewUpdateEventArgs e)
    {
        string studentID = CourseStudent.Rows[e.RowIndex].Cells[0].Text;
        string scoreStr = ((TextBox)CourseStudent.Rows[e.RowIndex].FindControl("ScoreTextBox")).Text;
        
        
        int score = int.Parse(scoreStr);
        string updateSql = "Update StudentCourse Set Score = @score Where StudentID = @studentID and CourseID = @courseID";
        helper.ExecuteNonQuery(updateSql, CommandType.Text, new SqlParameter[] { new SqlParameter("@score", score),
                                                     new SqlParameter("@studentID", studentID), new SqlParameter("@courseID", AllCourse.SelectedItem.Value)});
        CourseStudent.EditIndex = -1;
        GetData();
    }

    protected void GetData()
    {
        //SqlConnection con = new SqlConnection(connection);
        //con.Open();
        //SqlCommand comm = new SqlCommand(sqlQuery, con);
        //comm.Parameters.AddWithValue("@courseID", AllCourse.SelectedItem.Value);
        //SqlDataAdapter adapter = new SqlDataAdapter();
        //adapter.SelectCommand = comm;
        //DataSet dataSet = new DataSet();
        //adapter.Fill(dataSet);
        //con.Close();

        string sqlQuery = "SELECT * FROM StudentCourse inner join Student on StudentCourse.CourseID = @courseID and StudentCourse.StudentID = Student.StudentID";
        try
        {
            DataTable dt = helper.ExecuteDataTable(sqlQuery, CommandType.Text, new SqlParameter[] { new SqlParameter("@courseID", AllCourse.SelectedItem.Value) });
            CourseStudent.DataSource = dt;
            CourseStudent.DataBind();
        }
        catch(Exception e)
        {
            DataTable dt = null;
            CourseStudent.DataSource = dt;
            CourseStudent.DataBind();
        }
        
    }
}