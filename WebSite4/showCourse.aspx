<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showCourse.aspx.cs" Inherits="second" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">全校课程一览</h3>
        </div>
        <div class="panel-body panel-default">
            学年：<label>
                <asp:DropDownList ID="year" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem>2016-2017</asp:ListItem>
                    <asp:ListItem>2017-2018</asp:ListItem>
                    <asp:ListItem>2018-2019</asp:ListItem>
                    <asp:ListItem Selected="True">2019-2020</asp:ListItem>
                </asp:DropDownList>
            </label>
             学期：<label>
                <asp:DropDownList ID="term" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
             </label>
            学院：<label>
                <asp:DropDownList ID="school" class="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="school_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>数学与计算机学院</asp:ListItem>
                    <asp:ListItem>中歌艺术学院</asp:ListItem>
                    <asp:ListItem>水产学院</asp:ListItem>
                    <asp:ListItem>食品科技学院</asp:ListItem>
                    <asp:ListItem>农学院</asp:ListItem>
                    <asp:ListItem>机械与动力工程学院</asp:ListItem>
                    <asp:ListItem>外国语学院</asp:ListItem>
                    <asp:ListItem>体育与休闲学院</asp:ListItem>
                    <asp:ListItem>海洋工程学院</asp:ListItem>
                    <asp:ListItem>海洋与气象学院</asp:ListItem>
                    <asp:ListItem>管理学院</asp:ListItem>
                    <asp:ListItem>电子与信息工程学院</asp:ListItem>
                    <asp:ListItem>法政学院</asp:ListItem>
                    <asp:ListItem>化学与环境学院</asp:ListItem>
                    <asp:ListItem>文学与新闻传播学院</asp:ListItem>
                </asp:DropDownList>
            </label>
            专业：<label>
                <asp:DropDownList ID="major" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </label>
            班级：<label>
                <asp:DropDownList ID="myClass" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1161</asp:ListItem>
                    <asp:ListItem>1162</asp:ListItem>
                    <asp:ListItem>1163</asp:ListItem>
                    <asp:ListItem>1164</asp:ListItem>
                    <asp:ListItem>1171</asp:ListItem>
                    <asp:ListItem>1172</asp:ListItem>
                    <asp:ListItem>1173</asp:ListItem>
                    <asp:ListItem>1174</asp:ListItem>
                    <asp:ListItem>1181</asp:ListItem>
                    <asp:ListItem>1182</asp:ListItem>
                    <asp:ListItem>1183</asp:ListItem>
                    <asp:ListItem>1184</asp:ListItem>
                    <asp:ListItem>1191</asp:ListItem>
                    <asp:ListItem>1192</asp:ListItem>
                    <asp:ListItem>1193</asp:ListItem>
                    <asp:ListItem>1194</asp:ListItem>
                </asp:DropDownList>
            </label>
            课程：<label>
                <asp:DropDownList ID="course" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>.net技术</asp:ListItem>
                    <asp:ListItem>C#实用开发技术</asp:ListItem>
                    <asp:ListItem>C++程序设计</asp:ListItem>
                    <asp:ListItem>C++程序设计实验</asp:ListItem>
                    <asp:ListItem>EDA技术与应用</asp:ListItem>
                    <asp:ListItem>JAVA程序设计</asp:ListItem>
                    <asp:ListItem>JAVA程序设计实验</asp:ListItem>
                    <asp:ListItem>JAVA程序设计课程设计</asp:ListItem>
                    <asp:ListItem>RFID原理及应用</asp:ListItem>
                    <asp:ListItem>Web开发技术</asp:ListItem>
                    <asp:ListItem>毕业实习</asp:ListItem>
                    <asp:ListItem>操作系统</asp:ListItem>
                    <asp:ListItem>常微分方程</asp:ListItem>
                    <asp:ListItem>程序设计基础（C）</asp:ListItem>
                    <asp:ListItem>程序设计基础（C）实验</asp:ListItem>
                    <asp:ListItem>程序设计基础课程设计</asp:ListItem>
                    <asp:ListItem>传感器与传感网</asp:ListItem>
                    <asp:ListItem>大数据处理技术</asp:ListItem>
                    <asp:ListItem>大学生职业发展与就业指导2</asp:ListItem>
                    <asp:ListItem>大学物理III</asp:ListItem>
                    <asp:ListItem>大学物理实验II</asp:ListItem>
                </asp:DropDownList>
            </label>
            教师：<label>
                <asp:DropDownList ID="teacher" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </label>
        </div>
    </div>
    <asp:GridView runat="server" ID="courseView" AutoGenerateColumns="False" DataKeyNames="课程编号" DataSourceID="SqlDataSource2" class="table table-bordered table-hover" AllowPaging="true" PageSize="15" OnPageIndexChanging="Course_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="课程编号" HeaderText="课程编号" InsertVisible="False" ReadOnly="True" SortExpression="课程编号" />
            <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
            <asp:BoundField DataField="任课教师" HeaderText="任课教师" SortExpression="任课教师" />
            <asp:BoundField DataField="课程性质" HeaderText="课程性质" SortExpression="课程性质" />
            <asp:BoundField DataField="起止周" HeaderText="起止周" SortExpression="起止周" />
            <asp:BoundField DataField="总学时" HeaderText="总学时" SortExpression="总学时" />
            <asp:BoundField DataField="班级名称" HeaderText="班级名称" SortExpression="班级名称" />
            <asp:BoundField DataField="学年" HeaderText="学年" SortExpression="学年" />
            <asp:BoundField DataField="学期" HeaderText="学期" SortExpression="学期" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString4 %>" SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
</asp:Content>

