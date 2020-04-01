<%@ Page Title="Log In - C.A.S" Language="C#" MasterPageFile="~/NonNavbar.Master" AutoEventWireup="true" CodeBehind="UserLogIn.aspx.cs" Inherits="Coiffeur_Appointment_System.UserLogIn" %>
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
        }
        .auto-style9 {
            width: 250px;
            height: 20px;
        }
        .auto-style10 {
            width: 250px;
        }
        .auto-style11 {
            width: 21px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="60px" Font-Strikeout="False" Text="Log In"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="E-mail: " Font-Size="20px"></asp:Label>
            </td>
            <td>
                <input id="Text1" class="auto-style9" type="email" /></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Password: " Font-Size="20px"></asp:Label>
            </td>
            <td>
                <input id="Password1" class="auto-style10" type="password" /></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <input id="Checkbox1" class="auto-style11" type="checkbox" />
                <asp:Label ID="Label4" runat="server" Font-Size="20px" Text=" Remember me."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Log In" Width="62px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="18px" Font-Underline="False" Text="Create an account."></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
