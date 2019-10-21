using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class selectOneCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strCon = "Data Source=DESKTOP-TIOVFOR;Initial Catalog=stuSys;Integrated Security=True";
            SqlConnection MyConnection = new SqlConnection(strCon);
            MyConnection.Open();
            string selected = "select * from selectCourse where 课程编号='" + Request.QueryString["num"]+"'";
            SqlCommand sc = new SqlCommand(selected, MyConnection);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            //实例化数据集DataSet
            DataSet da = new DataSet();
            //将返回的数据存放到DataSet中名为LoanMaterial的DataTable中
            sda.Fill(da);
            //设置数据源，用于填充控件中的项的值列表
            course.DataSource = da;
            //将控件及其所有子控件绑定到指定的数据源
            course.DataBind();

            SqlConnection MyConnection1 = new SqlConnection(strCon);
            MyConnection1.Open();
            string update = "update selectCourse set 已选=1 where 课程编号='" + Request.QueryString["num"] + "'";
            SqlCommand sc1 = new SqlCommand(update, MyConnection1);
            SqlDataAdapter sda1 = new SqlDataAdapter(sc1);
            DataSet da1 = new DataSet();
            sda1.Fill(da1);
            //selectView.DataSource = da1;
            //selectView.DataBind();
            string show = "select * from selectCourse";
            SqlCommand sc2 = new SqlCommand(show, MyConnection1);
            SqlDataAdapter sda2 = new SqlDataAdapter(sc2);
            DataSet da2 = new DataSet();
            sda2.Fill(da2);
            selectView.DataSource = da2;
            selectView.DataBind();

        }
    }
    
}