<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizencomapp.aspx.cs" Inherits="citizencomapp" %>

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
            text-align: center;
            color: #FF0000;
        }
        .style4
        {
            width: 203px;
        }
        .style5
        {
            color: #FFFFFF;
            width: 203px;
        }
        .style6
        {
            height: 20px;
            width: 203px;
        }
        .style7
        {
            width: 222px;
        }
        .style8
        {
            height: 20px;
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h3><center><em><strong>COLLECT COMPENSATION</strong></em></center></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C" class="style4">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Type</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" align=center>
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Name</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" align=center>
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Address</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" align=center>
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Phone</td>
            <td bgcolor="#E7E7FF" align=center >
                <asp:Label ID="Label4" runat="server" ></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" align=center>
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Date</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label5" runat="server" ></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" >
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Land</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label6" runat="server" ></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style2" align=center>
                Land Amount</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                <asp:Label ID="Label7" runat="server" ForeColor="Lime" ></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Tree</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style2" align=center>
                Tree Amount</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                <asp:Label ID="Label9" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                House</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C" class="style2" align=center>
                House Amount</td>
            <td bgcolor="#E7E7FF" class="style7" align=center>
                <asp:Label ID="Label11" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style6">
                </td>
            <td bgcolor="#E7E7FF" class="style3">
                Total Amount Estimated</td>
            <td bgcolor="#4A3C8C" class="style1" align=center  >
                <asp:Label ID="Label12" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF" class="style8">
                </td>
            <td class="style1">
                </td>
            <td class="style1">
                </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style5" align=center>
                Remark</td>
            <td bgcolor="#E7E7FF" align=center>
                <asp:Label ID="Label13" runat="server" ForeColor="Blue"></asp:Label>
            </td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style4">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" align=center>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Collected" />
            </td>
            <td bgcolor="#E7E7FF" class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style4">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF" class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>

</asp:Content>

