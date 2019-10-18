<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="studentList.aspx.cs" Inherits="studentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">学生名单</h3>
        </div>
    </div>
    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-hover table-bordered" AllowPaging="true" PageSize="14" OnPageIndexChanging="stuList_PageIndexChanging" ID="stuList">
        <Columns>
            <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号" ItemStyle-Width="300px"/>
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" ItemStyle-Width="700px"/>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT [学号], [姓名], [备注] FROM [studentList] WHERE ([课程编号] = @课程编号)">
        <SelectParameters>
            <asp:QueryStringParameter Name="课程编号" QueryStringField="num" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

