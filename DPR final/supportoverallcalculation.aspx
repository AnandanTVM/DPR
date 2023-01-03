<%@ Page Title="" Language="C#" MasterPageFile="~/supportteam.master" AutoEventWireup="true" CodeFile="supportoverallcalculation.aspx.cs" Inherits="supportoverallcalculation" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><h3><em><strong>Overall calculation Of Project</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<table class="w-100">
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style2">
            Infra Total Cost</td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Total cost" ForeColor="Red" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style3" bgcolor="#4A3C8C">
            Extimated Amount</td>
        <td class="style1" bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
        </td>
        <td class="style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" CssClass="style2" ErrorMessage="Extimated Amount" 
                ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style2">
            Compensation Total Amount</td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Total Amount" ForeColor="Red" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
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

