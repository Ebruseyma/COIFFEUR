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
        .auto-style12 {
            text-align: left;
            width: 65px;
            height: 289px;
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
                <asp:Label ID="lblTitle" runat="server" Font-Size="60px" Text="My Coiffeur" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style32"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Image ID="imgCoiffeur" runat="server" Height="236px" Width="322px" />
                <asp:FileUpload ID="fuImage" runat="server" Width="223px" />
            </td>

            <td class="auto-style12">
                <br />
                <br />
                <asp:Label ID="lblAbout" runat="server" Font-Size="20px" Text="About: " CssClass="filterLabel"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="lblPhone" runat="server" Font-Size="20px" Text="Phone Number: " CssClass="filterLabel"></asp:Label>
                </td>
            <td class="auto-style18">
                <br />
                <br />
                <asp:TextBox ID="txtAbout" runat="server" Height="90px" Width="255px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:TextBox ID="txtPhoneNumber" runat="server" Height="21px" Width="134px"></asp:TextBox>
                <br />
                </td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style33">
                <asp:Label ID="lblAddress" runat="server" Font-Size="20px" Text="Address: " CssClass="filterLabel"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            </td>
            <td class="auto-style16">
                <asp:TextBox ID="txtAddress" runat="server" Height="80px" Width="252px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style34">
                <asp:Label ID="lblEmail" runat="server" Font-Size="20px" Text="E-mail: " CssClass="filterLabel"></asp:Label>
                </td>
            <td class="auto-style31">
                <asp:TextBox ID="txtEmail" runat="server" Height="23px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style38"></td>
            <td class="auto-style39"></td>
            <td class="auto-style40">
                <asp:Button ID="btnSave" runat="server" class="auto-style41" text="SAVE" OnClick="btnSave_Click" /></td>
        </tr>
        <tr>
         
            <td class="auto-style36"></td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td>&nbsp;</td>

            <td>
                <asp:Label runat="server" ID="lblErrorText" Visible="false"></asp:Label><br />
                <br />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>