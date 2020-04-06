<%@ Page Title="Admin Main - C.A.S" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminMainPage.aspx.cs" Inherits="CoiffeurAppointmentSystem.adminMainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 675px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            width: 458px;
            height: 82px;
        }
        .auto-style9 {
            width: 458px;
        }
        .auto-style10 {
            width: 289px;
            height: 94px;
        }
        .auto-style12 {
            text-align: left;
            width: 65px;
            height: 289px;
        }
        .auto-style13 {
            width: 155px;
            height: 22px;
        }
        .auto-style14 {
            width: 458px;
            height: 98px;
        }
        .auto-style16 {
            height: 98px;
        }
        .auto-style17 {
            text-align: center;
            width: 458px;
            height: 289px;
        }
        .auto-style18 {
            height: 289px;
        }
        .auto-style19 {
            width: 200px;
            height: 22px;
        }
        .auto-style25 {
            height: 82px;
        }
        .auto-style26 {
            width: 458px;
            height: 11px;
        }
        .auto-style28 {
            height: 11px;
        }
        .auto-style29 {
            width: 458px;
            height: 53px;
        }
        .auto-style31 {
            height: 53px;
        }
        .auto-style32 {
            height: 82px;
            width: 65px;
        }
        .auto-style33 {
            height: 98px;
            width: 65px;
        }
        .auto-style34 {
            height: 53px;
            width: 65px;
        }
        .auto-style36 {
            height: 11px;
            width: 65px;
        }
        .auto-style37 {
            width: 65px;
        }
        .auto-style38 {
            width: 458px;
            height: 19px;
        }
        .auto-style39 {
            height: 19px;
            width: 65px;
        }
        .auto-style40 {
            height: 19px;
        }
        .auto-style41 {
            background-color: #e3d6cf;
            border-radius: 10px;
            border: 2px solid #f0f3f5;
            display: inline-block;
            cursor: pointer;
            color: #08060d;
            font-family: Garamond;
            font-size: 18px;
            text-decoration: none;
            width: 160px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label13" runat="server" Font-Size="60px" Text="My Coiffeur" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style32"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Image ID="Image1" runat="server" Height="236px" Width="322px" />
            </td>
            <td class="auto-style12">
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Font-Size="20px" Text="About: " CssClass="filterLabel"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Font-Size="20px" Text="Phone Number: " CssClass="filterLabel"></asp:Label>
                </td>
            <td class="auto-style18">
                <br />
                <br />
                <input id="Text1" class="auto-style10" type="text" /><br />
                <br />
                <br />
                <input id="Text2" class="auto-style13" type="text" /></td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style33">
                <asp:Label ID="Label17" runat="server" Font-Size="20px" Text="Address: " CssClass="filterLabel"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox3" runat="server" Height="56px" Width="185px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style34">
                <asp:Label ID="Label18" runat="server" Font-Size="20px" Text="E-mail: " CssClass="filterLabel"></asp:Label>
                </td>
            <td class="auto-style31">
                <input id="Text3" class="auto-style19" type="email" /></td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td class="auto-style39"></td>
            <td class="auto-style40">
                <input id="Button1" class="auto-style41" type="button" value="Save Changes" /></td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label19" runat="server" Font-Size="20px" Text="Pictures: " CssClass="filterLabel"></asp:Label>
                </td>
            <td class="auto-style36"></td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>