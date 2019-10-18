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
            <asp:BoundField DataField="星期" HeaderText="星期" SortExpression="星期"/>
            <asp:BoundField DataField="第一节" HeaderText="第一节" SortExpression="第一节" HtmlEncode="false"/>
            <asp:BoundField DataField="第二节" HeaderText="第二节" SortExpression="第二节" HtmlEncode="false"/>
            <asp:BoundField DataField="第三节" HeaderText="第三节" SortExpression="第三节" HtmlEncode="false"/>
            <asp:BoundField DataField="第四节" HeaderText="第四节" SortExpression="第四节" HtmlEncode="false"/>
            <asp:BoundField DataField="第五节" HeaderText="第五节" SortExpression="第五节" HtmlEncode="false"/>
        </Columns>
        <HeaderStyle CssClass="center"/>
        <RowStyle HorizontalAlign="Center" CssClass="perStyle"></RowStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stuSysConnectionString3 %>" SelectCommand="SELECT [星期], [第一节], [第二节], [第三节], [第四节], [第五节] FROM [personalCourse] WHERE (([学号] = @学号) AND ([学年] = @学年) AND ([学期] = @学期))">
        <SelectParameters>
            <asp:Parameter DefaultValue="201611701208" Name="学号" Type="String" />
            <asp:ControlParameter ControlID="year" Name="学年" PropertyName="SelectedValue" Type="String" DefaultValue="2019-2020"/>
            <asp:ControlParameter ControlID="term" DefaultValue="1" Name="学期" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

