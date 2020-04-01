<%@ Page Title="" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="AppointmentPage.aspx.cs" Inherits="Coiffeur_Appointment_System.AppointmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            text-align: right;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            height: 26px;
            width: 385px;
        }
        .auto-style10 {
            text-align: right;
            width: 60px;
        }
        .auto-style11 {
            width: 193px;
        }
        .auto-style14 {
            width: 60px;
        }
        .auto-style15 {
            text-align: right;
            width: 60px;
            height: 14px;
        }
        .auto-style16 {
            height: 14px;
        }
        .auto-style17 {
            width: 374px;
        }
        .auto-style18 {
            height: 14px;
            width: 374px;
        }
        .auto-style19 {
            text-align: right;
        }
        .auto-style20 {
            width: 100%;
            height: 298px;
        }
        .auto-style21 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style7">APPOINTMENT DATE: </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" Height="16px" Width="171px">
                </asp:DropDownList>
            </td>
        </tr>
    </table>




    &nbsp;<asp:DataList ID="DataList1" runat="server" Width="1075px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" rowspan="3">
                        <asp:Image ID="Image1" runat="server" Height="198px" Width="222px" />
                    </td>
                    <td class="auto-style15">Name:</td>
                    <td class="auto-style18">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style10">Expertise:</td>
                    <td class="auto-style17">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style19">Available Hours:</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style21" rowspan="2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="75px" Width="323px"></asp:ListBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="32px" Text="Choose" Width="112px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Info:</td>
                    <td class="auto-style17">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

