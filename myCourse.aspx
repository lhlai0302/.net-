<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myCourse.aspx.cs" Inherits="first" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="panel panel-default">
        <div class="panel-heading">
             <h3 class="panel-title">我的课表</h3>
        </div>
        <div class="panel-body panel-default">
            <label>
                <asp:DropDownList ID="year" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem>2016-2017</asp:ListItem>
                    <asp:ListItem>2017-2018</asp:ListItem>
                    <asp:ListItem>2018-2019</asp:ListItem>
                    <asp:ListItem Selected="True">2019-2020</asp:ListItem>
                </asp:DropDownList>
            </label>
            学年第
             <label>
                <asp:DropDownList ID="term" class="form-control" runat="server" AutoPostBack="true">
                    <asp:ListItem Selected="True">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
             </label>学期
        </div>
    </div>
    <asp:GridView runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-bordered table-hover table-striped" RowStyle-Height="117px" RowStyle-Width="16%">
        
        <Columns>
            <asp:BoundField DataField="week" HeaderText="星期" SortExpression="week" />
            <asp:BoundField DataField="firstClass" HeaderText="第一节" SortExpression="firstClass" HtmlEncode="false"/>
            <asp:BoundField DataField="secondClass" HeaderText="第二节" SortExpression="secondClass" HtmlEncode="false"/>
            <asp:BoundField DataField="thirdClass" HeaderText="第三节" SortExpression="thirdClass" HtmlEncode="false"/>
            <asp:BoundField DataField="fourthClass" HeaderText="第四节" SortExpression="fourthClass" HtmlEncode="false"/>
            <asp:BoundField DataField="fifthClass" HeaderText="第五节" SortExpression="fifthClass" HtmlEncode="false"/>
        </Columns>
        
        <HeaderStyle CssClass="center"/>
        <RowStyle HorizontalAlign="Center" CssClass="perStyle"></RowStyle>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString %>" SelectCommand="SELECT [week], [firstClass], [secondClass], [thirdClass], [fourthClass], [fifthClass] FROM [personalCourse] WHERE ([year] = @year) AND ([term] = @term))">
        <SelectParameters>
            <%--<asp:Parameter DefaultValue="" Name="studentId" Type="String" />--%>
            <asp:ControlParameter ControlID="year" DefaultValue="2019-2020" Name="year" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="term" DefaultValue="1" Name="term" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

