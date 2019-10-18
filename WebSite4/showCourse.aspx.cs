using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class second : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Course_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        courseView.PageIndex = e.NewPageIndex;
        courseView.DataBind();
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    DataSet dateset = new DataSet();
    //    //dateset 从数据库中获取数据
    //    this.courseView.DataSource = dateset;
    //    this.courseView.DataBind(); 
    //}

    protected void school_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (school.SelectedValue)
        {
            case "数学与计算机学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("软件工程"));
                major.Items.Add(new ListItem("计算机科学与技术"));
                major.Items.Add(new ListItem("物联网工程"));
                major.Items.Add(new ListItem("信息管理与信息系统"));
                major.Items.Add(new ListItem("信息与计算科学"));
                break;
            case "水产学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("水产养殖学"));
                major.Items.Add(new ListItem("水生动物医学"));
                major.Items.Add(new ListItem("海洋渔业科学与技术"));
                major.Items.Add(new ListItem("生物科学"));
                break;
            case "食品科技学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("食品科学与工程"));
                major.Items.Add(new ListItem("食品质量与安全"));
                major.Items.Add(new ListItem("生物工程"));
                break;
            case "农学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("园艺"));
                major.Items.Add(new ListItem("园林"));
                major.Items.Add(new ListItem("林学"));
                major.Items.Add(new ListItem("动物科学"));
                major.Items.Add(new ListItem("生物技术"));
                major.Items.Add(new ListItem("农学"));
                major.Items.Add(new ListItem("植物保护"));
                major.Items.Add(new ListItem("农学实验"));
                major.Items.Add(new ListItem("动物医学"));
                break;
            case "机械与动力工程学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("机械设计制造及其自动化"));
                major.Items.Add(new ListItem("工业工程"));
                major.Items.Add(new ListItem("机械电子工程"));
                major.Items.Add(new ListItem("材料成型及控制工程"));
                major.Items.Add(new ListItem("能源与动力工程"));
                major.Items.Add(new ListItem("建筑环境与能源应用工程"));
                major.Items.Add(new ListItem("工业设计"));
                break;
            case "海运学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("航海技术"));
                major.Items.Add(new ListItem("交通运输"));
                major.Items.Add(new ListItem("轮机工程"));
                break;
            case "外国语学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("英语"));
                major.Items.Add(new ListItem("日语"));
                break;
            case "中歌艺术学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("产品设计"));
                major.Items.Add(new ListItem("音乐学"));
                major.Items.Add(new ListItem("舞蹈编导"));
                major.Items.Add(new ListItem("美术学"));
                major.Items.Add(new ListItem("视觉传达设计"));
                major.Items.Add(new ListItem("环境设计"));
                major.Items.Add(new ListItem("服装与服饰设计"));
                major.Items.Add(new ListItem("表演"));
                major.Items.Add(new ListItem("播音与主持艺术"));
                break;
            case "体育与休闲学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("社会体育指导与管理"));
                major.Items.Add(new ListItem("休闲体育"));
                break;
            case "海洋工程学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("工程管理"));
                major.Items.Add(new ListItem("船舶与海洋工程"));
                major.Items.Add(new ListItem("港口航道与海岸工程"));
                break;
            case "海洋与气象学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("大气科学"));
                major.Items.Add(new ListItem("应用气象学"));
                major.Items.Add(new ListItem("海洋科学"));
                break;
            case "法政学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("法学"));
                major.Items.Add(new ListItem("政治学与行政学"));
                major.Items.Add(new ListItem("社会学"));
                break;
            case "管理学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("土地资源管理"));
                major.Items.Add(new ListItem("公共事业管理"));
                major.Items.Add(new ListItem("行政管理"));
                major.Items.Add(new ListItem("财务管理"));
                major.Items.Add(new ListItem("会计学"));
                major.Items.Add(new ListItem("工商管理"));
                major.Items.Add(new ListItem("旅游管理"));
                break;
            case "电子与信息工程学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("电子信息工程"));
                major.Items.Add(new ListItem("通信工程"));
                major.Items.Add(new ListItem("电气工程及其自动化"));
                major.Items.Add(new ListItem("自动化"));
                major.Items.Add(new ListItem("电子科学与技术"));
                major.Items.Add(new ListItem("海洋技术"));
                major.Items.Add(new ListItem("电信实验（二）"));
                major.Items.Add(new ListItem("电信实验（一）"));
                break;
            case "化学与环境学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("农业资源与环境"));
                major.Items.Add(new ListItem("环境科学"));
                major.Items.Add(new ListItem("制药工程"));
                major.Items.Add(new ListItem("海洋资源与环境"));
                major.Items.Add(new ListItem("应用化学"));
                major.Items.Add(new ListItem("化学实验"));
                break;
            case "文学与新闻传播学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("汉语言文学"));
                major.Items.Add(new ListItem("汉语国际教育"));
                major.Items.Add(new ListItem("秘书学"));
                major.Items.Add(new ListItem("文学实验"));
                major.Items.Add(new ListItem("编辑出版学"));
                major.Items.Add(new ListItem("新闻学"));
                break;
            case "经济学院":
                major.Items.Clear();
                major.Items.Add(new ListItem(" "));
                major.Items.Add(new ListItem("经济学"));
                major.Items.Add(new ListItem("国际经济与贸易"));
                break;
        }

    }
}