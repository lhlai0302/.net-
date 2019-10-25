<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" CodeFile="GradeEntry.aspx.cs" Inherits="GradeEntry" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class ="pannel pannel-default">
        <div class =" pannel-heading">
            <label>任课课程</label>
            <%--<asp:SqlDataSource ID="ConnectionTest" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionTest %>" 
                    SelectCommand="SELECT CourseName FROM [Course] ">
            </asp:SqlDataSource>--%>
            <%--<asp:DropDownList 
                ID="ConnectionTestData" runat="server" AutoPostBack="true" DataSourceID ="ConnectionTest" DataTextField ="CourseName" OnSelectedIndexChanged="SelectCourse_OnChanged">
            </asp:DropDownList>--%>
             <asp:DropDownList 
                ID="AllCourse" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectCourse_OnChanged">
            </asp:DropDownList>
            <asp:GridView ID="CourseStudent" runat="server" 
                OnSelectedIndexChanged="CourseStudent_SelectedIndexChanged" 
                onRowEditing ="Edit" OnRowCancelingEdit="Cancel" OnRowUpdating  ="Update"
                Width="377px" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="学生ID" ReadOnly="True" />
                <asp:BoundField DataField="StudentName" HeaderText="学生姓名" ReadOnly="True" />
<%--                <asp:BoundField DataField="Score" HeaderText="分数" ReadOnly ="False" ApplyFormatInEditMode ="True"/>--%>
                <asp:TemplateField HeaderText="分数" SortExpression="link">
                    <EditItemTemplate>
                        <asp:TextBox ID="ScoreTextBox" runat="server" Width ="45px" Height ="20px" Text='<%# Eval("Score") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="ScoreLabel" runat="server" Text='<%# Eval("Score") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                </Columns>
                <HeaderStyle CssClass="center"/>
                <RowStyle HorizontalAlign="Center" CssClass="perStyle"></RowStyle>
            </asp:GridView>
        </div>
    </div>
    
</asp:Content>