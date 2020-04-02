<%@ Page Title="" Language="C#" MasterPageFile="~/MemberUser.Master" AutoEventWireup="true" CodeBehind="UserAppointmentView.aspx.cs" Inherits="CoiffeurAppointmentSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="UserAppointmentView.css" rel="stylesheet" />

    <div class="main">
        <h1>APPOINTMENTS</h1>
        <div class="first">
            <p><b>Current Appointments:</b></p>
            <div class="first_border">
                <table class="first_table" >
                    <tr>
                        <th>COIFFEUR</th>
                        <th>SERVICE</th>
                        <th>DATE</th>
                        <th> START</th>
                        <th> END</th>
                        <th>ESTIMATE TIME</th>
                        <th>ESTIMATE PRICE</th>
                        <th> EDIT</th>             
                        <th> CANCEL</th>

                    </tr>
                    <tr>
                        <td>MOON BEAUTY</td>
                        <td>Nail Art</td>
                        <td>05.04.2020</td>
                        <td>15:30</td>
                        <td>16:30</td>
                        <td>One Hour</td>
                        <td>40TL</td>
                        <td><asp:Button class="btn edit" runat="server" Text="  Edit  " /></td>
                        <td><asp:Button class="btn cancel" runat="server" Text="Cancel" /></td>

                        <td></td>
                    </tr>
                      <tr>
                        <td>HAIR WORLD</td>
                        <td>Eyelash Lifting</td>
                        <td>05.04.2020</td>
                        <td>16:00</td>
                        <td>17:00</td>
                        <td>One Hour</td>
                        <td>120TL</td>
                        <td><asp:Button class="btn edit" runat="server" Text="  Edit  " /></td>
                        <td><asp:Button class="btn cancel" runat="server" Text="Cancel" /></td>

                        <td></td>
                    </tr>
                    
                </table> <br />
                <asp:Button class="btn add" runat="server" Text="ADD NEW APPOINTMENT" />



            </div>
        </div>
        <div class="second">
            <p><b>Old Appointments:</b></p>
            <div class="second_border">
                <table class="second_table" >
                    <tr>
                        <th>COIFFEUR</th>
                        <th>SERVICE</th>
                        <th>DATE</th>
                        <th> PRICE</th>
                        <th> DETAIL</th>
                        <th>COMMENT</th>
                    </tr>
                    <tr>
                        <td>HAIR SALON</td>
                        <td>Hair Cut</td>
                        <td>29.03.2019</td>
                        <td>50TL</td>
                        <td><asp:Button class="btn detail" runat="server" Text="Detail" /></td>
                        <td><asp:Button class="other edit" runat="server" Text="COMMENT NOW !!" /></td>
                    </tr>
                     <tr>
                        <td>SALON DE COIFFEUR</td>
                        <td>Make-Up</td>
                        <td>29.12.2019</td>
                        <td>60TL</td>
                        <td><asp:Button class="btn detail" runat="server" Text="Detail" /></td>
                        <td><asp:Button class="other edit" runat="server" Text="COMMENT NOW !!" /></td>
                    </tr>
                     <tr>
                        <td>HAIR WORLD</td>
                        <td>Eyelash Lifting</td>
                        <td>29.12.2019</td>
                        <td>100TL</td>
                        <td><asp:Button class="btn detail" runat="server" Text="Detail" /></td>
                        <td><asp:Button class="other edit" runat="server" Text="COMMENT NOW !!" /></td>

                    </tr>
                    
                </table>
            </div>
        </div>

    </div>


</asp:Content>
