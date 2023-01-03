<%@ Page Title="" Language="C#" MasterPageFile="~/direcotr.master" AutoEventWireup="true" CodeFile="direcotrExeptedfund1.aspx.cs" Inherits="direcotrExeptedfund1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
        .style2
        {
            height: 20px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h3><em><strong> Expected Fund Flow</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table width="100%" >
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Fagency Id</td>
            <td bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Date of Update</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Type Of Project</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Expected Amount</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Remark</td>
            <td class="style1" bgcolor="#E7E7FF">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Status</td>
            <td bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label7" runat="server" ForeColor="Blue"></asp:Label>
                <asp:Label ID="Label8" runat="server" ForeColor="Lime"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Approve" Visible="False" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

