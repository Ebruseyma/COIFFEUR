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
            width: 247px;
            height: 158px;
        }

        .auto-style15 {
            height: 158px;
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
        .auto-style26 {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="AdminStaffs.aspx">Staffs</a> : Add Staff
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

            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label  runat="server" Text="Staff ID " CssClass="filterLabel" Font-Size="X-Large" Visible="false"></asp:Label>
            </td>
            <td class="auto-style26">&nbsp;<asp:Label ID="lblStaffId" runat="server" Visible="false"></asp:Label>
            </td>
            <td>
                <br />
                <br />
            </td>

        </tr>
        <tr>

            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblFirstName" runat="server" Text="First Name: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style26">&nbsp;<asp:TextBox ID="txtFirstName" runat="server" Height="22px" Width="185px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <br />
            </td>

        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblLastName" runat="server" Text="Last Name: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style26">&nbsp;<asp:TextBox ID="txtLastName" runat="server" Height="22px" Width="185px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblEmail" runat="server" Text="E-mail: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style26">&nbsp;<asp:TextBox ID="txtEmail" runat="server" Height="22px" Width="186px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblPassword" runat="server" Text="Password: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style26">&nbsp;<asp:TextBox ID="txtPassword" runat="server" Height="22px" Width="185px" Style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>
                <br />
                <br />
                <br />
            </td>


        </tr>
        <tr>
            <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblgender" runat="server" Text="Gender:"  CssClass="filterLabel" Font-Size="X-Large"> </asp:Label>
         </td>
              <td class="auto-style21">
               
                <asp:RadioButtonList ID="rdpGender" runat="server">
                    <asp:ListItem Text="Male" Value="1" />
                    <asp:ListItem Text="Female" Value="2" />
                    <asp:ListItem Text="Undefined" Value="5" Selected="True"  />
                </asp:RadioButtonList>
            </td>
</tr>
        <%-- <tr>
            <td class="auto-style22">
                <p class="auto-style21"><asp:Label ID="lblAbout" runat="server" Text="About Staff: " CssClass="filterLabel" Font-Size="X-Large"></asp:Label></p>
            </td>
            <td class="auto-style20">
                &nbsp;<asp:TextBox ID="txtAbout" runat="server" Height="96px" Width="244px"></asp:TextBox>
            </td>
        </tr>--%>
            <tr>
             <td class="auto-style21">
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            </tr>
        <tr>
            <td></td>
            <td class="auto-style26">
                <asp:Button ID="btnAddStaff" runat="server" Text="Add Staff" class="auto-style25" OnClick="btnAddStaff_Click" />&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" class="auto-style25" OnClick="btnClear_Click" /><br />
                <br />
                &nbsp;</td>
             <td>
                 <br />
                <br />
                &nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style26">
                <asp:Label runat="server" ID="lblErrorText" Visible="false"></asp:Label><br />
                <br />
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
