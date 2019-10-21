<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="selectOneCourse.aspx.cs" Inherits="selectOneCourse" Debug="true" %>

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
    <asp:GridView runat="server" ID="selectView" class="table table-bordered table-hover" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
            <asp:BoundField DataField="教师姓名" HeaderText="教师姓名" SortExpression="教师姓名" />
            <asp:BoundField DataField="上课时间" HeaderText="上课时间" SortExpression="上课时间" />
            <asp:BoundField DataField="上课地点" HeaderText="上课地点" SortExpression="上课地点" />
            <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
            <asp:BoundField DataField="容量" HeaderText="容量" SortExpression="容量" />
            <asp:BoundField DataField="已选" HeaderText="已选" SortExpression="已选" />
            <asp:BoundField DataField="余量" HeaderText="余量" ReadOnly="True" SortExpression="余量" />
        </Columns>
    </asp:GridView>
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">已选列表</h3>
        </div>
    </div>
    <asp:GridView runat="server" class="table table-hover table-bordered" AutoGenerateColumns="False" ID="course">
        <Columns>
            <asp:BoundField DataField="课程名称" HeaderText="课程名称" SortExpression="课程名称" />
            <asp:BoundField DataField="教师姓名" HeaderText="教师姓名" SortExpression="教师姓名" />
            <asp:BoundField DataField="上课时间" HeaderText="上课时间" SortExpression="上课时间" />
            <asp:BoundField DataField="上课地点" HeaderText="上课地点" SortExpression="上课地点" />
            <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
        </Columns>

    </asp:GridView>
</asp:Content>

