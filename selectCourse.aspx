<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="selectCourse.aspx.cs" Inherits="selectCourse" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">体育选课</h3>
        </div>
        <div class="panel-body panel-default">
            <label>姓名：</label>
            <label>学院：</label>
            <label>专业：</label>
            上课时间：<label>
                <asp:DropDownList CssClass="form-control" runat="server" ID="time">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </label>
        </div>
    </div>
    <asp:GridView runat="server" ID="selectView" class="table table-bordered table-hover"  DataSourceID="SqlDataSource1" AutoGenerateColumns="False" OnRowDataBound="selectView_RowDataBound">
        <Columns>
            <asp:BoundField DataField="courseName" HeaderText="课程名称" SortExpression="courseName" />
            <asp:BoundField DataField="teacher" HeaderText="任课教师" SortExpression="teacher" />
            <asp:BoundField DataField="time" HeaderText="上课时间" SortExpression="time" />
            <asp:BoundField DataField="classroom" HeaderText="上课地点" SortExpression="classroom" />
            <asp:BoundField DataField="credit" HeaderText="学分" SortExpression="credit" />
            <asp:BoundField DataField="sum" HeaderText="容量" SortExpression="sum" />
            <asp:BoundField DataField="checked" HeaderText="已选" SortExpression="checked" />
            <asp:BoundField DataField="allowance" HeaderText="余量" SortExpression="allowance" />
        </Columns>
        
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT [courseName], [teacher], [time], [classroom], [credit], [sum], [checked], [allowance] FROM [selectCourse]"></asp:SqlDataSource>
    
    
</asp:Content>

