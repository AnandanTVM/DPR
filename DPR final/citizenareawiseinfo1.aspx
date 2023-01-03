<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizenareawiseinfo1.aspx.cs" Inherits="citizenareawiseinfo1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <center><h3><em><strong>AREA WISE INFO</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <form id="form1" runat="server">
    <table width=80%>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Prepared By</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Date Of Preparation</td>
            <td class="style1" bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Location</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Specialty Of Location</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Detailed Info</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label5" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</center>
</asp:Content>

