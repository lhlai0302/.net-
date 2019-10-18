<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:content id="content2" contentplaceholderid="contentplaceholder2" runat="server">
    <%--<asp:table runat="server">
        <asp:TableRow></asp:TableRow>
    </asp:table>--%>
    <table class="table table-bordered table-hover table-striped">
        <thead>
            <tr>
                <th>学校公告</th>
                <th>发布时间</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>第二轮选课开始了！</td>
                <td>2019-10-12 09:17:09</td>
            </tr>
        </tbody>
    </table>
</asp:content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:ListView runat="server" DataSourceID="SqlDataSource1" ItemPlaceholderID="holder" ID="lv2">
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">name</th>
                                <th runat="server">age</th>
                            </tr>
                            <tr id="holder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
                <td>
                    <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString5 %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
    <asp:DataPager ID="DataPager2" PagedControlID="lv2" runat="server" PageSize="3">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                ShowLastPageButton="True" ShowNextPageButton="True"
                ShowPreviousPageButton="True" />
        </Fields>
    </asp:DataPager>
</asp:Content>--%>

