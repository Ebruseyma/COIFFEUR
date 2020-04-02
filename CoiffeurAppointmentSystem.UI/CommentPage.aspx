<%@ Page Title="Comments - C.A.S" Language="C#" MasterPageFile="~/UserNonFilter.Master" AutoEventWireup="true" CodeBehind="CommentPage.aspx.cs" Inherits="Coiffeur_Appointment_System.CommentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
         <link href="commentstyle.css" rel="stylesheet" />
    <div class="title">COMMENTS</div>

    <div class="comment">Send a Comment:</div>
    <asp:TextBox class="TextBox1" runat="server"></asp:TextBox>

    <asp:Button class="Button1" runat="server" Text="Send" />
  
    <hr align="left" width="1290px">

</asp:Content>
