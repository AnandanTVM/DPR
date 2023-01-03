<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizencompupdate1.aspx.cs" Inherits="citizencompupdate1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h3><center><em><strong>COMPLAINTS </strong></em></center></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                Date</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                Type Of Compliant</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                Complaint</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                Complaint Update</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>

