<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizenHome.aspx.cs" Inherits="citizenHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <p><h4>
        WELCOME
        <asp:Label ID="Label1" runat="server" ForeColor="#FF0066"></asp:Label><br />
         (<asp:Label ID="Label2" runat="server" ForeColor="#FF0066"></asp:Label>)
  </h4>
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <asp:Image ID="Image1" runat="server" Height="405px" 
            ImageUrl="~/assets/img/cash-1169650_960_720.jpg" />
       </p>
    </form>
</asp:Content>

