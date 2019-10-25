<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GradeSearch.aspx.cs" Inherits="GradeEntry" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class ="pannel pannel-default">
        <div class =" pannel-heading">
            <label>成绩查询</label>
             <%--<asp:DropDownList 
                ID="AllCourse" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectCourse_OnChanged">
            </asp:DropDownList>--%>
            <asp:GridView ID="StudentScore" runat="server" 
                OnSelectedIndexChanged="StudentScore_SelectedIndexChanged" 
                onRowEditing ="Edit" OnRowCancelingEdit="Cancel" OnRowUpdating  ="Update"
                Width="377px" AutoGenerateColumns="False">
                <Columns>
                <asp:BoundField DataField="CourseID" HeaderText="课程号" ReadOnly="True" />
                <asp:BoundField DataField="CourseName" HeaderText="课程名" ReadOnly="True" />
                <asp:BoundField DataField="Score" HeaderText="成绩" ReadOnly="True" />
                </Columns>
                <HeaderStyle CssClass="center"/>
                <RowStyle HorizontalAlign="Center" CssClass="perStyle"></RowStyle>
            </asp:GridView>
        </div>
    </div>
    
</asp:Content>