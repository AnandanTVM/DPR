<%@ Page Title="" Language="C#" MasterPageFile="~/Experts.master" AutoEventWireup="true" CodeFile="expertdoubtsrespons1.aspx.cs" Inherits="expertdoubtsrespons1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h3><center><em><strong>RESPONSE DOUBTS</strong></em></center></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Date</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                User Name</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Doubts</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Remark</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Replay</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox1" runat="server" Height="114px" TextMode="MultiLine" 
                    Width="325px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Replay" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

