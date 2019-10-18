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
    <asp:GridView runat="server" ID="selectView" DataKeyNames="课程名称" class="table table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="selectView_RowDataBound">
        <%--分页属性AllowPaging="True" PageSize="8" OnPageIndexChanging="Course_PageIndexChanging"--%>
        <Columns>
            <asp:TemplateField HeaderText="课程名称" SortExpression="课程名称">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("课程名称") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("课程名称") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="教师姓名" SortExpression="教师姓名">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("教师姓名") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("教师姓名") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="上课时间" SortExpression="上课时间">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("上课时间") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("上课时间") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="上课地点" SortExpression="上课地点">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("上课地点") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("上课地点") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="学分" SortExpression="学分">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("学分") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("学分") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="容量" SortExpression="容量">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("容量") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("容量") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="已选" SortExpression="已选">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("已选") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("已选") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="余量" SortExpression="余量">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("余量") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("余量") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT * FROM [selectCourse]"></asp:SqlDataSource>
    <asp:textbox id="text" runat="server"></asp:textbox>
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">已选列表</h3>
        </div>
    </div>
    <asp:GridView runat="server" ID="selected" class="table table-bordered table-hover"></asp:GridView>
</asp:Content>

