using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class WebSite4_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Submit_Stu_Click(object sender, EventArgs e)
    {
        string username = loginId_stu.Text;
        string password = pwd_stu.Text;

        string connectionString = "Data Source=DESKTOP-TIOVFOR;Initial Catalog=stuSys;Integrated Security=True";

        //tb
        //string connectionString = "Data Source=DESKTOP-A4MQ24D\\SQLEXPRESS;Initial Catalog=stu_management;Integrated Security=True";

        SqlConnection connection = new SqlConnection(connectionString);
        string queryString_Student = "select StudentPwd from Student where StudentID=" + username;
        string queryString_Teacher = "select TeacherPwd from Teacher where TeacherID=" + username;

        SqlCommand cmd = null;
        if(username.Length == 12)
        {
            cmd = new SqlCommand(queryString_Student, connection);
        }else if(username.Length == 8)
        {
            cmd = new SqlCommand(queryString_Teacher, connection);
        }
        string msg = "";       //提取密码
        try
        {
            connection.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            msg = reader.GetString(0);
        }
        catch
        {
            Response.Write("<script>alert('用户名不存在');</script>");
        }

        //密码错误
        if (msg != "")
        {
            if (msg != password)
            {
                Response.Write("<script>alert('密码错误');</script>");
            }
            else
            {
                Session["userId"] = username;
                Response.Redirect("/WebSite4/index.aspx");
            }
        }
    }
}