<%@ Page Title="" Language="C#" MasterPageFile="~/direcotr.master" AutoEventWireup="true" CodeFile="direcotrstudyreport1.aspx.cs" Inherits="direcotrstudyreport1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 508px;
        }
        .style2
        {
            width: 508px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h3><em><strong>REPORT</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table class="w-100" width="100%">
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Prepared From</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Date</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Type</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Report</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
            </td>
        </tr>
    </table>
    </form>

</asp:Content>

