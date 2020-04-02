<%@ Page Title="" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="adminMainPage.aspx.cs" Inherits="Coiffeur_Appointment_System.adminMainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style101{
            height: 43px;
            width: 127px;
            border-bottom: medium solid darksalmon;
            background-color: darkgray;
        }

        .auto-style22 { /*ALL*/
            width: 86%;
            height: 367px;
            font-size: 15px;
            background-color: lightgray;
            margin-top: auto;
            margin-left: auto;
            margin-right: auto;
            padding: 4% 4% 4% 4%;
        }

        .auto-style33 {
            height: 31px;
            width: 130px;
            border-bottom: medium solid darksalmon;
            font-style: normal;
            background-color: darkgray;
        }

        .auto-style44 {
            height: 31px;
            width: 131px;
            border-bottom: medium solid darksalmon;
        }

        .auto-style8 {
            height: 31px;
            width: 100px;
        }

        .auto-style9 {
            height: 31px;
            width: 120px;
            border-bottom: medium solid darksalmon;
            background-color: darkgray;
        }

        .auto-style10 {
            height: 43px;
            width: 120px;
            border-bottom: medium solid darksalmon;
        }

        .auto-style11 {
            height: 43px;
            width: 120px;
        }

       

        .tableboard {
            border-radius: 10px;
            background-color: dimgray;
            width: 73%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5%;
        }

        .buttonstyle {
            height: 50px;
            width: 150px;
            background-color: gray;
            font-style: normal;
            border-color: darksalmon;
            border-radius: 30px;
            float: center;
            margin-left: 39%;
            margin-right: 50%;
            margin-top: 2%;
        }

        .p {
            text-align: center;
            font-size: 150%;
        }

        .textbox1 {
            width: 220px;
            height: 100px;
        }

        .textbox2 {
            width: 220px;
        }

        .textbox3 {
            width: 220px;
            height: 100px;
        }

        .textbox4 {
            width: 220px;
        }
        .auto-style102 {
            border-radius: 10px;
            background-color: dimgray;
            width: 73%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5%;
            height: 451px;
        }
        .auto-style103 {
            height: 27px;
            width: 127px;
            border-bottom: medium solid darksalmon;
            background-color: darkgray;
        }
        .auto-style104 {
            height: 27px;
            width: 120px;
            border-bottom: medium solid darksalmon;
        }
        .auto-style105 {
            height: 1px;
            width: 127px;
            border-bottom: medium solid darksalmon;
            background-color: darkgray;
        }
        .auto-style106 {
            height: 1px;
            width: 120px;
            border-bottom: medium solid darksalmon;
        }
    </style>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="p">
        My Coiffeur
       &nbsp;
    </p>
    <div class="auto-style102">
        <table border="0" class="auto-style22">
            <tr>
                <th rowspan="3" class="auto-style33">
                    <asp:Image ID="Image1" runat="server" />
                    Change Image
                </th>
                <td align="center" class="auto-style9">About:</td>
                <th class="auto-style44">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox1"></asp:TextBox></th>
            </tr>
            <tr>
                <td align="center" class="auto-style101">Phone Number:</td>
                <td align="center" class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox2">   </asp:TextBox>


                </td>
                <tr>
                    <td align="center" class="auto-style105">Address:</td>
                    <td align="center" class="auto-style106">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox3">
                        </asp:TextBox>

                        
                    </td>
                    <tr>
                        <td align="center" class="auto-style103"></td>
                        <td align="center" class="auto-style103">E-mail:</td>
                        <td align="center" class="auto-style104">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox4">

                            </asp:TextBox>
                            

                        </td>
                    </tr>
            <tr>
                <td colspan="3" class="auto-style11"></td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style8"></td>
            </tr>
            
        </table>
        <asp:Button ID="Button1" runat="server" Text="SAVE CHANGES" CssClass="buttonstyle" />
</asp:Content>
