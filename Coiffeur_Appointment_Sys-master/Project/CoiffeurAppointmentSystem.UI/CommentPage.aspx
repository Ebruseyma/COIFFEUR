<%@ Page Title="Comments - C.A.S" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="CommentPage.aspx.cs" Inherits="CoiffeurAppointmentSystem.CommentPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 76px;
            width: 283px;
            text-align: center;
        }

        .auto-style7 {
            height: 44px;
            text-align: left;
        }

        .auto-style8 {
            height: 333px;
        }

        .auto-style9 {
            height: 333px;
            width: 279px;
            text-align: right;
        }

        .auto-style10 {
            height: 44px;
            width: 279px;
            text-align: center;
        }

        .auto-style11 {
            height: 333px;
            width: 725px;
            text-align: center;
        }

        .auto-style12 {
            height: 44px;
            width: 725px;
        }

        .auto-style13 {
            width: 100%;
            height: 45px;
        }

        .auto-style14 {
            text-align: right;
            width: 212px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Comments"></asp:Label>
    </div>
    <br />
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style9">Send a comment:</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="70px" Width="501px"></asp:TextBox>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style12"></td>
            <td class="auto-style7">
                <asp:Label runat="server" ID="lblError" Visible="false"></asp:Label>
                <asp:Button ID="btnSendCommend" OnClick="btnSendCommend_Click" runat="server" Text="Send" />
            </td>
        </tr>
    </table>
    <br />
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="auto-style13" style="background-color: white">
                <tr>
                    <td class="auto-style14" style="background-color: white">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("first_name") %>'></asp:Label>
                        : </td>
                    <td style="background-color: white">&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style15" Width="949px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"><a class="info1" href="infoPage.aspx?id=<%#Eval("wp_id") %>">INFORMATION</a></td>
                    <td class="auto-style5"><a class="info2" href="ProcedurePage.aspx?id=<%#Eval("wp_id") %>">PROCEDURES</a></td>
                    <td class="auto-style5"><a class="info3" href="CommentPage.aspx?id=<%#Eval("wp_id") %>">COMMENTS</a></td>
                    <td class="auto-style5"><a class="info4" href="CantactPage.aspx?id=<%#Eval("wp_id") %>">CONTACT</a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

