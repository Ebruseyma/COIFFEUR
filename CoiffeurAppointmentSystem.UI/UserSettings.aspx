<%@ Page Title="" Language="C#" MasterPageFile="~/MemberUser.Master" AutoEventWireup="true" CodeBehind="UserSettings.aspx.cs" Inherits="CoiffeurAppointmentSystem.UI.UserSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
            <td class="auto-style16">
                <asp:Label ID="Label13" runat="server" CssClass="filterLabel" Font-Size="40px" Text="Settings"></asp:Label>
            </td>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label14" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="First Name: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txt1" runat="server" Height="22px" Width="185px"></asp:TextBox>
            </td>
            <td rowspan="4" class="auto-style7">
                <asp:Image ID="Image1" runat="server" Height="143px" Width="224px"  />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" Width="223px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label15" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="Last Name: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txt2" runat="server" Height="22px" Width="185px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label16" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="Gender: "></asp:Label>
            </td>
            <td class="auto-style21">
               
                <asp:RadioButtonList ID="rdpGender" runat="server">
                    <asp:ListItem Text="Male" Value="1" />
                    <asp:ListItem Text="Female" Value="2" />
                    <asp:ListItem Text="Undefined" Value="5"  />
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label20" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="E-mail: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txt3" runat="server" Height="22px" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label21" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="Password: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txt4" runat="server" Height="22px" Width="130px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label22" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="Password Confirm: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="txt5" runat="server" Height="22px" Width="130px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label23" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="City: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="110px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label24" runat="server" CssClass="filterLabel" Font-Size="X-Large" Text="Birth Date: "></asp:Label>
            </td>
            <td class="auto-style21">
                <asp:TextBox ID="dtBirthDate" runat="server" Height="22px" Width="125px" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="lblHata" runat="server" Text=""></asp:Label>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="filterButton" Height="40px" Text="Submit" Width="136px" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
