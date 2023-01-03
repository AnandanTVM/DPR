<%@ Page Title="" Language="C#" MasterPageFile="~/csgov.master" AutoEventWireup="true" CodeFile="csgovnot.aspx.cs" Inherits="csgovnot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><h3><em><strong>NOTIFICATION</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
<table align="center" cellpadding="4" class="style1" width="100%">
    <tr>
        <td class="style12" bgcolor="#4A3C8C">
        </td>
        <td class="style13" valign="middle" bgcolor="#4A3C8C">
            .</td>
        <td class="style12" colspan="2" valign="middle" bgcolor="#E7E7FF">
            <asp:Label ID="Label3" runat="server" ForeColor="#0066FF"></asp:Label>
        </td>
        <td class="style12">
        </td>
    </tr>
    <tr>
        <td class="style1" bgcolor="#4A3C8C">
            &nbsp;</td>
        <td class="style3" valign="middle" bgcolor="#4A3C8C">
            Subject</td>
        <td class="style4" colspan="2" valign="middle" bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="225px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Type of notification" 
                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" bgcolor="#4A3C8C">
            &nbsp;</td>
        <td class="style3" valign="middle" bgcolor="#4A3C8C">
            Notification</td>
        <td class="style4" colspan="2" valign="middle" bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox4" runat="server" Height="92px" TextMode="MultiLine" 
                Width="225px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Notification" ForeColor="Red" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1" bgcolor="#4A3C8C">
            &nbsp;</td>
        <td class="style10" bgcolor="#4A3C8C">
            &nbsp;</td>
        <td class="style6" bgcolor="#E7E7FF">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Update" 
                Width="88px" />
        </td>
        <td class="style5" bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1" bgcolor="#4A3C8C">
            &nbsp;</td>
        <td class="style10" bgcolor="#4A3C8C">
            &nbsp;</td>
        <td class="style6" bgcolor="#E7E7FF">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td class="style5" bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    </table>
</form>

</asp:Content>

