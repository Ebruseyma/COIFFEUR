<%@ Page Title="" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="adminProcedurePage.aspx.cs" Inherits="Coiffeur_Appointment_System.adminProcedurePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        

     
        .auto-style5 {
            height: 43px;
            width: 131px;
            border-bottom: double;
            border-bottom: medium solid darksalmon;
        }

        .auto-style6 {
            height: 47px;
        }

        .auto-style7 {
            width: 90%;
            height: 31px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 20px;
            border-bottom: medium solid darksalmon;
        }

        .auto-style8 {
            height: 31px;
            width: 100px;
        }

        .auto-style9 {
            height: 31px;
            width: 120px;
            border-bottom: medium solid black;
            background-color: gray;
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
            width: 100px;
            background-color: gray;
            font-style: normal;
            border-color: darksalmon;
            border-radius: 30px;
            float: center;
            margin-left: 40%;
            margin-right: 50%;
            margin-top: 3%;
        }

        .p {
            text-align: center;
        }
        .auto-style13 {
            height: 30px;
            width: 212px;
            font-style: normal;
            text-align: right;
            border-bottom: medium solid black;
            background-color: gray;
        }
        .auto-style14 {
            height: 43px;
            width: 212px;
            border-bottom: medium solid darksalmon;
        }
        .auto-style15 {
            height: 30px;
            width: 288px;
            border-bottom: medium solid black;
            background-color: gray;
        }
        .auto-style16 {
            height: 32px;
            width: 288px;
            text-align: center;
            border-bottom: medium solid darksalmon;
        }
        .auto-style17 {
            width: 602px;
            height: 30px;
            font-size: 15px;
            text-align: right;
            margin-left: auto;
            margin-right: auto;
            margin-top: auto;
            padding: 4%;
            background-color: lightgray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="p">
        PROCEDURES&nbsp;
    </p>
    <div class="tableboard">
        <table border="0" class="auto-style17">
            <tr>
                <th align="center" class="auto-style13">Procedure</th>
                <th class="auto-style9">Approximate Time</th>
                <th class="auto-style15">Price</th>
            </tr>
            <tr>
                <td align="center" class="auto-style14">Haircut</td>
                <td align="center" class="auto-style10">30 minute</td>
                <td align="center" class="auto-style16">30 ₺</td>
                <tr>
                    <td align="center" class="auto-style14">Haircut</td>
                    <td align="center" class="auto-style10">30 minute</td>
                    <td align="center" class="auto-style16">30 ₺</td>
                    <tr>
                        <td colspan="3" class="auto-style6"></td>
                    </tr>
            <tr>
                <td colspan="3" class="auto-style11"></td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style8"></td>
            </tr>

        </table>
        <table class="auto-style7">
            <tr>
                <td>Procedure Name:
                </td>
                <td>Approximate Time:
                </td>
                <td>Price:
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="buttonstyle" />
    </div>
</asp:Content>
