<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Breadcrumbs.ascx.cs" Inherits="CoiffeurAppointmentSystem.UI.Breadcrumbs" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
<asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
    <CurrentNodeStyle ForeColor="#333333" />
    <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
    <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
    <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
</asp:SiteMapPath>
 