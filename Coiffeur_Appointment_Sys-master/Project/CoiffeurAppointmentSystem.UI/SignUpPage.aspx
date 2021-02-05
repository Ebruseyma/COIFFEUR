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
        .auto-style12 {
            width: 514px;
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
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Last Name: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="185px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Text="Gender: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:CheckBox ID="CheckBox6" runat="server" />
                <asp:Label ID="Label5" runat="server" Text="Male" CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox7" runat="server" />
                <asp:Label ID="Label6" runat="server" Text="Female" CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox8" runat="server" />
                <asp:Label ID="Label7" runat="server" Text="Undefined" Font-Size="X-Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label8" runat="server" Text="E-mail: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="210px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label9" runat="server" Text="Password: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="130px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label10" runat="server" Text="Password Confirm: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="130px"></asp:TextBox>
            </td>
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
                <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="130px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:CheckBox ID="CheckBox9" runat="server" />
            </td>
            <td class="auto-style12">I accept the User Agreement and the Protection of Personal Data Policy and give explicit consent that the CAS can process my data and share its domestic/overseas business partners for the development of my user experience.</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:CheckBox ID="CheckBox10" runat="server" />
            </td>
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
