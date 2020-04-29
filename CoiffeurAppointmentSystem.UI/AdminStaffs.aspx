<%@ Page Title="Admin Staffs - C.A.S" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminStaffs.aspx.cs" Inherits="CoiffeurAppointmentSystem.UI.AdminStaffs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 278px;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style9 {
            width: 287px;
            height: 29px;
            text-align: center;
        }

        .auto-style10 {
            height: 29px;
            text-align: center;
        }

        .auto-style12 {
            height: 29px;
            width: 581px;
            text-align: center;
        }

        .auto-style13 {
            width: 287px;
            text-align: center;
            height: 34px;
        }

        .auto-style14 {
            width: 581px;
            height: 34px;
        }

        .auto-style15 {
            height: 34px;
        }

        .auto-style16 {
            width: 100%;
            height: 34px;
        }

        .auto-style17 {
            text-align: center;
            width: 314px;
        }

        .auto-style18 {
            text-align: center;
            width: 544px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="lblTitle" runat="server" Font-Size="60px" Text="Staffs" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style14">
                <br />
                <br />
                &nbsp; <a href="AdminAddStaff.aspx">
                    <asp:Label ID="lblAddStaff" runat="server" Font-Size="20px" Text="Add staff" CssClass="filterLabel"></asp:Label></a>
            </td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblFree" runat="server" Font-Size="20px" Text="Free" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="lblWorking" runat="server" Font-Size="20px" Text="Working right now" CssClass="filterLabel"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="lblOffDay" runat="server" Font-Size="20px" Text="Off-day" CssClass="filterLabel"></asp:Label>
            </td>
        </tr>
    </table>
     <table class="auto-style16">
                <thead>
                    <tr>
                        <th class="auto-style17">
                            &nbsp;<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                        </th>
                        <th class="auto-style18">
                            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </th>
                        <th class="auto-style17">
                            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                        </th>
                        <th class="auto-style17">
                            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                        </th>
                     <%--   <th class="auto-style17">
                            <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                        </th>--%>
                    </tr>
                </thead>
         </table>
    <asp:DataList ID="dtlAdminStaffs" runat="server" Width="1124px">
        <ItemTemplate>
            <table class="auto-style16">
              
                <tbody>
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("first_name") %>'></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("last_name") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                        </td>
                        <%--<td class="auto-style17">
                            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td class="auto-style17">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
                    </td>
                     <td class="auto-style17">
                        <asp:Label ID="lblBirthDay" runat="server" Text="BirthDay"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:Label ID="lblCreateDate" runat="server" Text="CreateDate"></asp:Label>
                    </td>--%>
                    </tr>
                </tbody>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
</asp:Content>
