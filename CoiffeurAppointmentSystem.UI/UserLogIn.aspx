<%@ Page Title="Log In - C.A.S" Language="C#" MasterPageFile="~/NonNavbar.Master" AutoEventWireup="true" CodeBehind="UserLogIn.aspx.cs" Inherits="CoiffeurAppointmentSystem.UserLogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 646px;
        }
        .auto-style7 {
            width: 377px;
            text-align: center;
        }
        .auto-style8 {
            width: 377px;
            text-align: right;
            height: 69px;
        }
        .auto-style10 {
            width: 250px;
            height: 22px;
        }
        .auto-style11 {
            width: 21px;
            height: 18px;
        }
        .auto-style12 {
            width: 377px;
            text-align: right;
            height: 53px;
        }
        .auto-style13 {
            height: 53px;
        }
        .auto-style14 {
            width: 377px;
            text-align: right;
            height: 52px;
        }
        .auto-style15 {
            height: 52px;
        }
        .auto-style16 {
            width: 377px;
            text-align: center;
            height: 67px;
        }
        .auto-style17 {
            height: 67px;
        }
        .auto-style18 {
            height: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="60px" Font-Strikeout="False" Text="Log In" CssClass="filterLabel"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label2" runat="server" Text="E-mail: " Font-Size="20px" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style13">
                <input id="Text1" class="auto-style10" type="email" /></td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label3" runat="server" Text="Password: " Font-Size="20px" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style15">
                <input id="Password1" class="auto-style10" type="password" /></td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style18">
                <input id="Checkbox1" class="auto-style11" type="checkbox" />
                <asp:Label ID="Label4" runat="server" Font-Size="20px" Text=" Remember me."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:Button ID="Button1" runat="server" Height="37px" Text="Log In" Width="80px" CssClass="filterButton" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <a href="SignUpPage.aspx">
                    <asp:Label ID="Label5" runat="server" Font-Size="18px" Font-Underline="False" Text="Create an account." CssClass="filterLabel"></asp:Label></a>
            </td>
        </tr>
    </table>
</asp:Content>
