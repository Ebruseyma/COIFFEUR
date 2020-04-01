<%@ Page Title="Main Page - C.A.S" Language="C#" MasterPageFile="~/MemberUser.Master" AutoEventWireup="true" CodeBehind="MemberMain.aspx.cs" Inherits="Coiffeur_Appointment_System.MemberMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
