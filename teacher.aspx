<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="teacher.aspx.cs" Inherits="teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">我的课程</h3>
        </div>
    </div>
    <asp:GridView runat="server" class="table table-hover table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="tC_RowDataBound" RowStyle-Height="117px">
        <Columns>
            <asp:BoundField DataField="courseName" HeaderText="课程名称" SortExpression="courseName" />
            <asp:BoundField DataField="classroom" HeaderText="上课地点" SortExpression="classroom" HtmlEncode="false"/>
            <asp:BoundField DataField="time" HeaderText="上课时间" SortExpression="time" HtmlEncode="false"/>
            <asp:BoundField DataField="class" HeaderText="上课班级" SortExpression="class" />
            <asp:BoundField DataField="count" HeaderText="人数" SortExpression="count" />
        </Columns>
        <HeaderStyle CssClass="center"/>
        <RowStyle HorizontalAlign="Center" ></RowStyle>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT [courseName], [classroom], [time], [class], [count] FROM [teacherCourse]"></asp:SqlDataSource>
    
</asp:Content>

