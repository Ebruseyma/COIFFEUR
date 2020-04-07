<%@ Page Title="Admin Add Staff - C.A.S" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminAddStaff.aspx.cs" Inherits="CoiffeurAppointmentSystem.UI.AdminAddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 278px;
        }
        .auto-style13 {
            width: 287px;
            text-align: center;
            height: 158px;
        }
        .auto-style14 {
            width: 581px;
            height: 158px;
        }
        .auto-style15 {
            height: 158px;
        }
        .auto-style16 {
            width: 247px;
            height: 96px;
        }
        .auto-style17 {
            height: 54px;
        }
        .auto-style18 {
            height: 54px;
            text-align: right;
        }
        .auto-style20 {
            text-align: justify;
            height: 108px;
        }
        .auto-style21 {
            text-align: right;
            height: 106px;
        }
        .auto-style22 {
            height: 108px;
        }
        .auto-style24 {
            height: 22px;
        }
        .auto-style25 {
            background-color: #e3d6cf;
            border-radius: 10px;
            border: 2px solid #f0f3f5;
            display: inline-block;
            cursor: pointer;
            color: #08060d;
            font-family: Garamond;
            font-size: 18px;
            text-decoration: none;
            width: 102px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label13" runat="server" Font-Size="60px" Text="Add Staff" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style14">
                <br />
                <br />
&nbsp; <a href="AdminStaffs.aspx">
            <asp:Label ID="Label14" runat="server" Font-Size="20px" Text="Staffs" CssClass="filterLabel"></asp:Label></a>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label1" runat="server" Text="Staff ID: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style17">
                <input id="Text1" type="text" maxlength:15 required="required" value:"int" maxlength="15" class="auto-style24"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <p class="auto-style21"><asp:Label ID="Label2" runat="server" Text="About Staff: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label></p>
            </td>
            <td class="auto-style20">
                <input id="Text2" type="text" maxlength:320 required="required" value:"char" maxlength="320" class="auto-style16"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input id="Submit1" type="submit" value="Add Staff" class="auto-style25" /><br />
                <br />
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
