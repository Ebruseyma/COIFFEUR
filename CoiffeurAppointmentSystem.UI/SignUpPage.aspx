<%@ Page Title="Sign Up - C.A.S" Language="C#" MasterPageFile="~/NonNavbar.Master" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="CoiffeurAppointmentSystem.SignUpPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
 <link href="StyleSheet1.css" rel="stylesheet" />
     
    
          <asp:Label class="Label1" runat="server"  Font-Size="20px" Text="First Name:"></asp:Label>  
          <asp:TextBox class="TextBox1" runat="server" Height="41px" Width="404px"></asp:TextBox>
         

    <div class="box"> 
        <asp:Button ID="Button2" runat="server"  Font-Size="15px" Text="click the button for  your foto" />

    </div>
          <br />
            <asp:Label class="Label2" runat="server" Font-Size="20px"  Text="Last Name:"></asp:Label> 
            <asp:TextBox class="TextBox2" runat="server" Height="41px" Width="404px"></asp:TextBox>
         
           <br />
             <br />
            
             <asp:Label class="Label3" runat="server" Font-Size="20px"  Text="Gender:"> </asp:Label> 
  
          
             <asp:CheckBox ID="CheckBox1" runat="server"  Font-Size="20px"  Height="100px" Width="100px" Text="Female" />
            <asp:CheckBox ID="CheckBox2" runat="server"   Font-Size="20px"  Height="100px" Width="100px" Text="Male" />
             <asp:CheckBox ID="CheckBox3" runat="server"  Font-Size="20px"  Height="100px" Width="130px" Text="Undefined" />

            
<br />
    <br />

                   <asp:Label class="Label4" runat="server"  Font-Size="20px"  Text="E-mail:"></asp:Label>
                   <asp:TextBox class="TextBox3" runat="server" Height="40px" Width="400px"></asp:TextBox>

    <br />
    

   
            <asp:Label class="Label5" runat="server" Font-Size="20px"  Text="Password:"></asp:Label>
            <asp:TextBox class="TextBox4" runat="server" Height="40px"    Width="400px"></asp:TextBox>

      <br />
            <asp:Label class="Label6" runat="server"  Font-Size="18px" text="Password Confirm:"></asp:Label>
            <asp:TextBox class="TextBox5" runat="server" Height="40px" Width="400px"></asp:TextBox>

   <br />


     <asp:Label class="Label7" runat="server" Font-size="20px"  BackColor="White" Text="City: "></asp:Label>

            <asp:DropDownList runat="server" class="dropdown" Width="408px" Height="45px" AutoPostBack="true">
              
          </asp:DropDownList>
    <br />


            <asp:Label class="Label8" runat="server"  Font-size="20px"  text="Date-of Birth:"></asp:Label>
            <asp:TextBox class="TextBox6" runat="server" Height="40px" Width="400px" style="margin-left: 38px"></asp:TextBox>


    <br />
    <br />
    <br />

           <asp:CheckBox class="CheckBox4" runat="server"   Font-Size="20px"  Text="I accept the user Aggrement and the Protection of Personel Data Policy and give my explicit consent that the Cas can process my data and share with its domestic/overseas business partners for the development of my user experience. "/>


     <br />
    <br />
    <br />
    <br />

        <asp:CheckBox class="CheckBox5" runat="server"  Font-Size="20px"  Text="I would like to receive personalized and other relevant emails about campaigns ,promotions and news. " />

        <br />
       <br />
       <br />
    
      <asp:Button class="Button1" runat="server"  Text="Sign up " />       
</asp:Content>
