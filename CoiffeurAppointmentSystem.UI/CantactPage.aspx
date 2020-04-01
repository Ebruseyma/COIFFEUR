<%@ Page Title="Contact - C.A.S" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="CantactPage.aspx.cs" Inherits="Coiffeur_Appointment_System.CantactPage" %>

<asp:Content ID="Content5" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 32px;
        }
        .auto-style8 {
            height: 68px;
        }
        .auto-style9 {
            font-size: 50px;
            
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8" colspan="2"><h1 class="auto-style9">Contact</h1>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" rowspan="7">
                <asp:Image ID="Image1" runat="server" Height="228px" Width="300px" />
            </td>
            <td>Phone Number:
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Address:
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>E-mail:
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Rating:
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr><td class="auto-style6">&nbsp;</td></tr>
        <tr><td class="auto-style6">&nbsp;</td></tr>
    </table>
</asp:Content>

