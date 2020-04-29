<%@ Page Title="Log In - C.A.S" Language="C#" MasterPageFile="~/NonNavbar.Master" AutoEventWireup="true" CodeBehind="UserLogIn.aspx.cs" Inherits="CoiffeurAppointmentSystem.UserLogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 646px;
        }

        .auto-style7 {
            width: 413px;
            text-align: center;
        }

        .auto-style8 {
            width: 413px;
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="60px" Font-Strikeout="False" Text="Log In" CssClass="filterLabel"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lblUserName" runat="server" Text="E-mail: " Font-Size="20px" CssClass="filterLabel"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style9" TextMode="Email" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="   Email cannot be blank" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator> </td>


        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="lblPassword" runat="server" Text="Password: " Font-Size="20px" CssClass="filterLabel"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style10" TextMode="Password" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <input id="Checkbox1" class="auto-style11" type="checkbox" />
                <asp:Label ID="Label4" runat="server" Font-Size="20px" Text=" Remember me." CssClass="filterLabel"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Log In" Width="70px" OnClick="Button1_Click" CssClass="filterButton" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Label ID="lblErrorMessage" runat="server" Font-Size="18px" Font-Underline="False" Text="Incorrect User Credentials"></asp:Label>
            </td>

        </tr>
    </table>
</asp:Content>
