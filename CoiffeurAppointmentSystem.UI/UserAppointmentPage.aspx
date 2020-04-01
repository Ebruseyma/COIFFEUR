<%@ Page Title="Appointments - C.A.S" Language="C#" MasterPageFile="~/MemberUser.Master" AutoEventWireup="true" CodeBehind="UserAppointmentPage.aspx.cs" Inherits="Coiffeur_Appointment_System.UserAppointmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-top:30px;" class="auto-style7">
        <strong>Appointments</strong></h1>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p class="auto-style8">
        &nbsp;Current Appointments:</p>
    <p class="auto-style8">
        <asp:DataList ID="DataList1" runat="server" Width="1062px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style12">Date:
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style10">Procedure:
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style13"><span class="auto-style9">Place:
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                            </span></td>
                        <td class="auto-style11">Staff:
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                            </span></td>
                        <td class="auto-style6">
                            <asp:Button ID="Button2" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p class="auto-style8">
        &nbsp;</p>
    <p class="auto-style8">
        Old Appointments:</p>
    <p class="auto-style8">
        <asp:DataList ID="DataList2" runat="server" Width="1062px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">Date:
                            <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style14">Procedure:
                            <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style15">Place:
                            <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style9">Staff:
                            <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p class="auto-style8">
        &nbsp;</p>
</asp:Content>
