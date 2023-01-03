<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizennotfound.aspx.cs" Inherits="citizennotfound" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #0000FF;
        }
        .style2
        {
            text-align: center;
            color: #0000FF;
        }
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="style1">
    <em>
    <CENTER><strong><h1 class="style2">NOT FOUND</h1></strong></CENTER></em>
        </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="style3">
        <tr>
            <td>
    <asp:Image ID="Image1" runat="server" Height="326px" 
        ImageUrl="~/assets/img/not-found.png" Width="209px" />
            </td>
            <td>
               <h3> Please Add Your <a href="citizenbelong.aspx">Belonging</a> Details For Compensation</h3></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </form>
</asp:Content>

