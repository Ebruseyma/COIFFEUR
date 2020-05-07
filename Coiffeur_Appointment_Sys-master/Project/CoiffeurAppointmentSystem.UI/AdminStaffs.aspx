<%@ Page Title="Admin Staffs - C.A.S" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminStaffs.aspx.cs" Inherits="CoiffeurAppointmentSystem.UI.AdminStaffs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 278px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style9 {
            width: 287px;
            height: 29px;
            text-align: center;
        }
        .auto-style10 {
            height: 29px;
            text-align: center;
        }
        .auto-style12 {
            height: 29px;
            width: 581px;
            text-align: center;
        }
        .auto-style13 {
            width: 287px;
            text-align: center;
            height: 34px;
        }
        .auto-style14 {
            width: 581px;
            height: 34px;
        }
        .auto-style15 {
            height: 34px;
        }
        .auto-style16 {
            width: 100%;
            height: 34px;
        }
        .auto-style17 {
            text-align: center;
            width: 314px;
        }
        .auto-style18 {
            text-align: center;
            width: 544px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label13" runat="server" Font-Size="60px" Text="Staffs" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style14">
                <br />
                <br />
&nbsp; <a href="AdminAddStaff.aspx">
            <asp:Label ID="Label14" runat="server" Font-Size="20px" Text="Add staff" CssClass="filterLabel"></asp:Label></a>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Font-Size="20px" Text="Free" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label16" runat="server" Font-Size="20px" Text="Working right now" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label17" runat="server" Font-Size="20px" Text="Off-day" CssClass="filterLabel"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" Width="1124px">
        <ItemTemplate>
            <table class="auto-style16">
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
</asp:Content>
