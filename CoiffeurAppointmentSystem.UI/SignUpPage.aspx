<%@ Page Title="Sign Up - C.A.S" Language="C#" MasterPageFile="~/NonNavbar.Master" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="CoiffeurAppointmentSystem.SignUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 700px;
        }
        .auto-style7 {
            width: 297px;
        }
        .auto-style8 {
            width: 297px;
            text-align: center;
            height: 119px;
        }
        .auto-style9 {
            width: 297px;
            text-align: right;
        }
        .auto-style11 {
            width: 23px;
            height: 21px;
        }
        .auto-style12 {
            width: 514px;
        }
        .auto-style13 {
            width: 210px;
            height: 22px;
        }
        .auto-style16 {
            width: 185px;
            height: 22px;
        }
        .auto-style17 {
            width: 130px;
            height: 22px;
        }
        .auto-style18 {
            background-color: #e3d6cf;
            border-radius: 10px;
            border: 2px solid #f0f3f5;
            display: inline-block;
            cursor: pointer;
            color: #08060d;
            font-family: Garamond;
            font-size: 18px;
            text-decoration: none;
            width: 90px;
            height: 35px;
        }
        .auto-style19 {
            width: 514px;
            height: 119px;
        }
        .auto-style20 {
            height: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Font-Size="50px" Text="Sign Up" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style19"></td>
            <td class="auto-style20"></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="First Name: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text1" class="auto-style16" type="text" required="required" value:"char" maxlength="15" autofocus="autofocus" placeholder="Enter your name"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Last Name: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text2" class="auto-style16" type="text" maxlength:15 required="required" value:"char" maxlength="15" placeholder="Enter your last name"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Text="Gender: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Checkbox1" class="auto-style11" type="checkbox" /><asp:Label ID="Label5" runat="server" Text="Male" CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;
                <input id="Checkbox2" class="auto-style11" type="checkbox" /><asp:Label ID="Label6" runat="server" Text="Female" CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;
                <input id="Checkbox3" class="auto-style11" type="checkbox" /><asp:Label ID="Label7" runat="server" Text="Undefined" Font-Size="X-Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label8" runat="server" Text="E-mail: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text3" class="auto-style13" type="email" maxlength:15 required="required" value:"char" placeholder="example01@outlook.com"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label9" runat="server" Text="Password: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Password1" class="auto-style17" required="required" type="password" maxlength="8" placeholder="*****" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label10" runat="server" Text="Password Confirm: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Password2" class="auto-style17" required="required" type="password" maxlength="8" placeholder="*****" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label11" runat="server" Text="City: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="110px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label12" runat="server" Text="Birth Date: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text4" class="auto-style17" type="date" min="01-01-1920" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <input id="Checkbox4" class="auto-style11" type="checkbox" required="required" /></td>
            <td class="auto-style12">I accept the User Agreement and the Protection of Personal Data Policy and give explicit consent that the CAS can process my data and share its domestic/overseas business partners for the development of my user experience.</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <input id="Checkbox5" class="auto-style11" type="checkbox" /></td>
            <td class="auto-style12">I would like to recieve personalized and other revelant emails about campaigns, promotions and news.</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>
                <input id="Submit1" class="auto-style18" type="submit" value="Sign Up" /></td>
        </tr>
    </table>
</asp:Content>
