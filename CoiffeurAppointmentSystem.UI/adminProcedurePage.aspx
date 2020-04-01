<%@ Page Title="" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="adminProcedurePage.aspx.cs" Inherits="Coiffeur_Appointment_System.adminProcedurePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
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
        .auto-style6 {
            text-align: right;
            height: 30px;
            width: 653px;
        }
        .auto-style7 {
            height: 30px;
            text-align: right;
            width: 100%;
        }
        .auto-style8 {
            width: 83%;
        }
        .auto-style9 {
            height: 30px;
            text-align: right;
            width: 81%;
        }
        .auto-style10 {
            width: 81%;
        }
        .auto-style11 {
            height: 30px;
            text-align: right;
            width: 80%;
        }
        .auto-style12 {
            width: 48%;
        }
        .auto-style13 {
            height: 30px;
            text-align: right;
            width: 48%;
        }
        .auto-style14 {
            border-radius: 10px;
            background-color: dimgray;
            width: 73%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 5%;
            height: 447px;
        }
        .auto-style15 {
            text-align: right;
            height: 363px;
            width: 653px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <p class="p">
        PROCEDURES&nbsp;
    </p>
    <div class="auto-style14">
        <table border="0" class="auto-style15">
            <tr>
                <th class="auto-style13">Procedure</th>
                <th class="auto-style9">Approximate Time</th>
                <th class="auto-style4">Price</th>
            </tr>
            <tr>
                <td align="center" class="auto-style12">Haircut</td>
                <td align="center" class="auto-style10">30 minute</td>
                <td align="center" class="auto-style5">30 ₺</td>
                <tr>
                    <td align="center" class="auto-style12">Haircut</td>
                    <td align="center" class="auto-style10">30 minute</td>
                    <td align="center" class="auto-style5">30 ₺</td>
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
    </div></p>
</asp:Content>
