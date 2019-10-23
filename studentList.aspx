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
            <asp:BoundField DataField="studentId" HeaderText="学号" SortExpression="studentId" ItemStyle-Width="300px"/>
            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
            <asp:BoundField DataField="extra" HeaderText="备注" SortExpression="extra" ItemStyle-Width="700px"/>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT [studentId], [name], [extra] FROM [studentList] WHERE ([courseId] = @courseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="courseId" QueryStringField="num" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

