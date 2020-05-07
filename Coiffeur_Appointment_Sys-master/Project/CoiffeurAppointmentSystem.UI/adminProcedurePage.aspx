<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminProcedurePage.aspx.cs" Inherits="CoiffeurAppointmentSystem.adminProcedurePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
            text-align: center;
            height: 100px;
            width: 347px;
        }
      
        .auto-style11 {
            width: 409px;
            font-size: xx-large;
            text-align: center;
            height: 100px;
        }
        .auto-style14 {
            width: 429px;
        }
        .auto-style15 {
            width: 309px;
        }
        .auto-style16 {
            width: 100%;
            height: 116px;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            font-family: Garamond;
            color: rgb(23,12,11);
            padding-left: 5px;
            text-align: center;
            width: 357px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label14" runat="server" CssClass="filterLabel" Font-Size="36px" Text="PROCEDURE"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="Label15" runat="server" CssClass="filterLabel" Font-Size="36px" Text="APPROXIMATE TIME"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label16" runat="server" CssClass="filterLabel" Font-Size="36px" Text="PRICE"></asp:Label>
            </td>
        </tr>
    </table>
    &nbsp;<asp:DataList ID="DataList1" runat="server" Height="184px" Width="1046px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("service_name") %>'></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("service_id") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <table class="auto-style16">
        <tr>
            <td class="auto-style14">Procedure Name:
                <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="160px"></asp:TextBox>
            </td>
            <td class="auto-style15">Approximate Time:
                <asp:TextBox ID="TextBox3" runat="server" Width="35px"></asp:TextBox>
            </td>
            <td>Price:
                <asp:TextBox ID="TextBox4" runat="server" Width="35px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="ADD" Width="137px" CssClass="filterButton" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
