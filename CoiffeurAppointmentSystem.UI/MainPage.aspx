<%@ Page Title="Main Page - C.A.S" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Coiffeur_Appointment_System.MainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            height: 355px;
        }
        .auto-style9 {
            height: 253px;
        }
        .auto-style10 {
            height: 253px;
            width: 417px;
        }
        .auto-style11 {
            width: 417px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            height: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Font-Size="50px" Height="53px" Text="Coiffeurs" Width="201px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <table class="auto-style7">
                                        <tr>
                                            <td class="auto-style10">
                                                <asp:Image ID="Image1" runat="server" Height="250px" Width="295px" />
                                            </td>
                                            <td class="auto-style9">
                                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label13" runat="server" Text="Procedures: "></asp:Label>
                                                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                                <br />
                                                <asp:Label ID="Label15" runat="server" Text="Rating: "></asp:Label>
                                                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="auto-style9"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style11">&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td class="auto-style12">
                                                <asp:Button ID="Button2" runat="server" Height="43px" Text="Make Appointment" Width="135px" />
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" CssClass="navLabel" Text="Search:" Font-Size="X-Large"></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:Label ID="Label2" runat="server" Text="Log In" CssClass="navLabel" Font-Size="Larger"></asp:Label>
&nbsp; 
                            <asp:Label ID="Label4" runat="server" CssClass="navLabel" Font-Size="Larger" Text="|"></asp:Label>
                            &nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Sign Up" CssClass="navLabel" Font-Size="Larger"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Content>

