<%@ Page Title="Main Page - C.A.S" Language="C#" MasterPageFile="~/MemberUser.Master" AutoEventWireup="true" CodeBehind="MemberMain.aspx.cs" Inherits="CoiffeurAppointmentSystem.MemberMain" %>

<%@ Register Src="~/Breadcrumbs.ascx" TagPrefix="uc1" TagName="Breadcrumbs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: center;
            width: 151px;
        }
        .auto-style10 {
            width: 410px;
        }
        .auto-style11 {
            text-align: center;
            width: 410px;
        }
        .auto-style12 {
            text-align: left;
            width: 151px;
        }
        .auto-style13 {
            text-align: left;
            width: 299px;
        }
        .auto-style14 {
            width: 316px;
        }
        .auto-style15 {
            text-align: left;
            width: 316px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Font-Size="50px" Height="53px" Text="Coiffeurs" Width="201px" CssClass="filterLabel"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="auto-style7">
                            <tr>
                                <td class="auto-style11">
                                    <asp:Image ID="Image1" runat="server" Height="250px" Width="295px" />
                                </td>
                                <td class="auto-style15">
                                    <a href="infoPage.aspx?id=<%#Eval("wp_id") %>">
                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("wp_name") %>' CssClass="filterLabel"></asp:Label>
                                    </a>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label13" runat="server" Text="Procedures: " CssClass="filterLabel"></asp:Label>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Eval("wp_id") %>' CssClass="filterLabel"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label15" runat="server" Text="Rating: " CssClass="filterLabel"></asp:Label>
                                    <asp:Label ID="Label16" runat="server" Text="Label" CssClass="filterLabel"></asp:Label>
                                </td>
                                <td class="auto-style9"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">&nbsp;</td>
                                <td class="auto-style14">&nbsp;</td>
                                <td class="auto-style12">
                                    <asp:Button ID="Button2" runat="server" Height="39px" Text="Make Appointment" Width="154px" CssClass="filterButton" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
