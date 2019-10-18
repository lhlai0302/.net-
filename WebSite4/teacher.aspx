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
            <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
            <asp:BoundField DataField="上课地点" HeaderText="上课地点" SortExpression="上课地点" HtmlEncode="false"/>
            <asp:BoundField DataField="上课时间" HeaderText="上课时间" SortExpression="上课时间" HtmlEncode="false"/>
            <asp:BoundField DataField="上课班级" HeaderText="上课班级" SortExpression="上课班级" />
            <asp:BoundField DataField="人数" HeaderText="人数" SortExpression="人数" />
        </Columns>
        <HeaderStyle CssClass="center"/>
        <RowStyle HorizontalAlign="Center" ></RowStyle>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT [课程名称], [上课地点], [上课时间], [上课班级], [人数] FROM [teacherCourse]"></asp:SqlDataSource>
    
</asp:Content>

