<%@ Page Title="" Language="C#" MasterPageFile="~/direcotr.master" AutoEventWireup="true" CodeFile="direcotrbelongcheck1.aspx.cs" Inherits="direcotrbelongcheck1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: left;
            color: #FFFFFF;
        }
        .style2
        {
            text-align: center;
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><em><strong><h3>&nbsp;Amount Estimation</h3></strong></em></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Type</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Name</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Address</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Phone</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Date</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Land</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style1">
                Land Amount</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Tree</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style1">
                Tree Amount</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                House</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style1">
                House Amount</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td class="style2" bgcolor="#E7E7FF">
                Total Amount Estimated</td>
            <td bgcolor="#4A3C8C" class="text-start">
                <asp:Label ID="Label12" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Remark</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label13" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="text-start">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" Text="Reject" />
            </td>
            <td bgcolor="#4A3C8C" class="text-start">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Approvel" />
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>

