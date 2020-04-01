<%@ Page Title="Sign Up - C.A.S" Language="C#" MasterPageFile="~/NonNavbar.Master" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="Coiffeur_Appointment_System.SignUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 650px;
        }
        .auto-style7 {
            width: 297px;
        }
        .auto-style8 {
            width: 297px;
            text-align: center;
        }
        .auto-style9 {
            width: 297px;
            text-align: right;
        }
        .auto-style10 {
            width: 185px;
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
        }
        .auto-style14 {
            width: 130px;
        }
        .auto-style15 {
            width: 63px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Sign Up"></asp:Label>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="First Name: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text1" class="auto-style10" type="text" required="required" value:"char" maxlength="15" autofocus="autofocus" placeholder="Enter your name"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Last Name: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text2" class="auto-style10" type="text" maxlength:15 required="required" value:"char" maxlength="15" placeholder="Enter your last name"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Text="Gender: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Checkbox1" class="auto-style11" type="checkbox" /><asp:Label ID="Label5" runat="server" Text="Male"></asp:Label>
&nbsp;&nbsp;
                <input id="Checkbox2" class="auto-style11" type="checkbox" /><asp:Label ID="Label6" runat="server" Text="Female"></asp:Label>
&nbsp;&nbsp;
                <input id="Checkbox3" class="auto-style11" type="checkbox" /><asp:Label ID="Label7" runat="server" Text="Undefined"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label8" runat="server" Text="E-mail: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text3" class="auto-style13" type="email" maxlength:15 required="required" value:"char" placeholder="example01@outlook.com"/></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label9" runat="server" Text="Password: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Password1" class="auto-style14" required="required" type="password" maxlength="8" placeholder="*****" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label10" runat="server" Text="Password Confirm: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Password2" class="auto-style14" required="required" type="password" maxlength="8" placeholder="*****" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label11" runat="server" Text="City: "></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="110px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label12" runat="server" Text="Birth Date: "></asp:Label>
            </td>
            <td class="auto-style12">
                <input id="Text4" class="auto-style14" type="date" min="01-01-1920" /></td>
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
                <input id="Submit1" class="auto-style15" type="submit" value="Sign Up" /></td>
        </tr>
    </table>
</asp:Content>
