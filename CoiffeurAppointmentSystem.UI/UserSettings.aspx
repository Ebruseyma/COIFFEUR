<%@ Page Title="" Language="C#" MasterPageFile="~/MemberUser.Master" AutoEventWireup="true" CodeBehind="UserSettings.aspx.cs" Inherits="CoiffeurAppointmentSystem.UI.UserSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
            height: 728px;
        }
        .auto-style10 {
            width: 185px;
        }
        .auto-style11 {
            width: 23px;
            height: 21px;
        }
        .auto-style13 {
            width: 210px;
        }
        .auto-style14 {
            width: 130px;
        }
        .auto-style15 {
            text-align: right;
            width: 341px;
        }
        .auto-style16 {
            text-align: center;
            height: 76px;
            width: 341px;
            font-size: xx-large;
        }
        .auto-style17 {
            height: 76px;

        }
        .auto-style18 {
            width: 341px;
        }
        .auto-style19 {
            
            width: 110px;
            height: 41px;
        }
        .auto-style20 {
            height: 76px;
            width: 379px;
        }
        .auto-style21 {
            width: 379px;
        }
        .auto-style22 {
            width: 1223px;
            height: 649px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style22">
        <tr>
            <td class="auto-style16">Settings</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style15">First Name:</td>
            <td class="auto-style21">
                <input id="Text1" class="auto-style10" type="text" required="required" value:"char" maxlength="15" autofocus="autofocus" placeholder="Enter your name"/></td>
            <td rowspan="4" class="auto-style7">
                <asp:Image ID="Image1" runat="server" Height="143px" Width="224px" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="223px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Last Name:</td>
            <td class="auto-style21">
                <input id="Text2" class="auto-style10" type="text" maxlength:15 required="required" value:"char" maxlength="15" placeholder="Enter your last name"/></td>
        </tr>
        <tr>
            <td class="auto-style15">Gender:</td>
            <td class="auto-style21">
                <input id="Checkbox1" class="auto-style11" type="checkbox" /><asp:Label ID="Label5" runat="server" Text="Male"></asp:Label>
                <input id="Checkbox2" class="auto-style11" type="checkbox" /><asp:Label ID="Label6" runat="server" Text="Female"></asp:Label>
                <input id="Checkbox3" class="auto-style11" type="checkbox" /><asp:Label ID="Label7" runat="server" Text="Undefined"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">E-mail:</td>
            <td class="auto-style21">
                <input id="Text3" class="auto-style13" type="email" maxlength:15 required="required" value:"char" placeholder="example01@outlook.com"/></td>
        </tr>
        <tr>
            <td class="auto-style15">Password:</td>
            <td class="auto-style21">
                <input id="Password1" class="auto-style14" required="required" type="password" maxlength="8" placeholder="*****" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Password Confirm:</td>
            <td class="auto-style21">
                <input id="Password2" class="auto-style14" required="required" type="password" maxlength="8" placeholder="*****" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">City</td>
            <td class="auto-style21">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="110px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">Birth Date:</td>
            <td class="auto-style21">
                <input id="Text4" class="auto-style14" type="date" min="01-01-1920" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>
                <input id="Submit1" class="auto-style19" type="submit" value="Update" /></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
