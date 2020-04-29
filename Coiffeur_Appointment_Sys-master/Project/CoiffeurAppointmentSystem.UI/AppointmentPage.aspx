<%@ Page Title="" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="AppointmentPage.aspx.cs" Inherits="CoiffeurAppointmentSystem.AppointmentPage" %>

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
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style7">APPOINTMENT DATE: </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddlDay" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMonth" runat="server">
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>Apr</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>Jun</asp:ListItem>
                    <asp:ListItem>Jul</asp:ListItem>
                    <asp:ListItem>Aug</asp:ListItem>
                    <asp:ListItem>Sep</asp:ListItem>
                    <asp:ListItem>Oct</asp:ListItem>
                    <asp:ListItem>Nov</asp:ListItem>
                    <asp:ListItem>Dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlYear" runat="server">
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btndate" runat="server" Text="date" OnClick="btndate_Click" />
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
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style10">Expertise:</td>
                    <td class="auto-style17">
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("service_name") %>'></asp:Label>
                                </td>
                                <td class="auto-style19">Available Hours:</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style21" rowspan="2">
                        <asp:ListBox ID="ListBox1" runat="server" Height="75px" Width="323px" ></asp:ListBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="32px" Text="Choose" Width="112px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Info:</td>
                    <td class="auto-style17">
                        <asp:Label ID="Label6" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
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


