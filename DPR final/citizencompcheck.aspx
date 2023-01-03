<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizencompcheck.aspx.cs" Inherits="citizencompcheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            height: 20px;
            color: #FFFFFF;
        }
        .style4
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h3><center><em><strong>COMPENSATION AMOUNT VALUE</strong></em></center></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style2" >
                Type</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style2">
                Name</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style3">
                Address</td>
            <td align=center bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style1">
                </td>
            <td bgcolor="#E7E7FF" class="style1">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style2">
                Phone</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style2">
                Date</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style2">
                Land</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td align=center bgcolor="#4A3C8C" class="style2">
                Land Amount</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label7" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style3"> 
                Tree</td>
            <td align=center bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td align=center bgcolor="#4A3C8C" class="style3"> 
                Tree Amount</td>
            <td align=center bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="Label9" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td align=center bgcolor="#4A3C8C" class="style2"> 
                House</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td align=center bgcolor="#4A3C8C" class="style2">
                House Amount</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label11" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td align=center bgcolor="#E7E7FF" class="style4">
                Total Amount Estimated</td>
            <td align=center bgcolor="#4A3C8C">
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
            <td align=center bgcolor="#4A3C8C" class="style2" >
                Remark</td>
            <td align=center bgcolor="#E7E7FF">
                <asp:Label ID="Label13" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
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

