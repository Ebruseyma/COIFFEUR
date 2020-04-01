<%@ Page Title="Information - C.A.S" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="infoPage.aspx.cs" Inherits="Coiffeur_Appointment_System.infoPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    

    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 531px;
        }
        .auto-style7 {
            height: 308px;
        }
        .auto-style8 {
            height: 308px;
            width: 378px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            height: 308px;
            width: 426px;
        }
        .auto-style13 {
            width: 426px;
        }
        .auto-style14 {
            width: 378px;
        }
        .auto-style15 {
            margin-right: 0px;
        }
    </style>


    

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style15">
                    <ItemTemplate>
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style8">
                                    <asp:Image ID="Image1" runat="server" Height="296px" Width="348px" />
                                </td>
                                <td class="auto-style11">&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;<asp:Label ID="Label5" runat="server" Text="About:"></asp:Label>
                                    &nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Rating: "></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style13">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td class="auto-style10">
                                    <asp:Button ID="Button1" runat="server" Height="37px" Text="Make Appointment" Width="115px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;
                                    <asp:Label ID="Label9" runat="server" Text="Pictures:"></asp:Label>
                                </td>
                                <td class="auto-style13">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;</td>
                                <td class="auto-style13">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>

