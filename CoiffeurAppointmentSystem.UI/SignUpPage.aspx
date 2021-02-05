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
        .auto-style16 {
            width: 185px;
            height: 22px;
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
                <asp:TextBox ID="txtname" runat="server"  maxlength="320" CssClass="auto-style16"  /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Last Name: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtLastName" runat="server"  maxlength="320" CssClass="auto-style16"  /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Text="Gender: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                	
    <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="110px" >
              </asp:DropDownList>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label8" runat="server" Text="E-mail: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtMail" runat="server"  maxlength="320" CssClass="auto-style16"  /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label9" runat="server" Text="Password: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtPassword" runat="server"  maxlength="320" CssClass="auto-style16" TextMode="Password" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label10" runat="server" Text="Password Confirm: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtConfirm" runat="server"  maxlength="320" CssClass="auto-style16"  TextMode="Password" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label11" runat="server" Text="City: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="110px" >
                     

                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label12" runat="server" Text="Birth Date: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtBirth" runat="server"  maxlength="320" CssClass="auto-style16"  /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:CheckBox ID="Checkbox4"  class="auto-style11" type="checkbox"   required="required"  runat="server" /></td>
            <td class="auto-style12">I accept the User Agreement and the Protection of Personal Data Policy and give explicit consent that the CAS can process my data and share its domestic/overseas business partners for the development of my user experience.<asp:Label ID="Label13" runat="server" Text="" BackColor="#ff0000"></asp:Label>
&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                 <asp:CheckBox ID="Checkbox5"  class="auto-style11" type="checkbox"   required="required"  runat="server" /></td>
            <td class="auto-style12">I would like to recieve personalized and other revelant emails about campaigns, promotions and news.</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Sign up!" Width="116px" OnClick="Button1_Click" Height="51px" /><br />
                <asp:Label ID="lblSuccessmessage" runat="server" Text="" BackColor="#ff0000"></asp:Label>
                <asp:Label ID="lblErrormessage" runat="server" Text="" BackColor="#ff0000"></asp:Label>
            
        </tr>
    </table>
</asp:Content>