<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminfeedback1.aspx.cs" Inherits="Adminfeedback1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
        .style2
        {
            color: #FFFFFF;
            width: 352px;
        }
        .style3
        {
            height: 19px;
            color: #FFFFFF;
            width: 352px;
        }
        .style4
        {
            width: 352px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><em><h3><strong>FEEDBACK</strong></h3></em></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
<table class="w-100">
    <tr>
        <td bgcolor="#4A3C8C" class="style2">
            Name</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="nam" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style3">
            Date</td>
        <td bgcolor="#E7E7FF" class="style1">
            <asp:Label ID="da" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style2">
            Phone</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="ph" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style2">
            Title</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="tit" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style2">
            Feedback</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="fee" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style4">
            <asp:Button ID="Button1" runat="server" Text="Back" onclick="Button1_Click1" />
        </td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style4">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
    </tr>
</table>
</form>

</asp:Content>

