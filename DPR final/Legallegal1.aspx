<%@ Page Title="" Language="C#" MasterPageFile="~/Legal.master" AutoEventWireup="true" CodeFile="Legallegal1.aspx.cs" Inherits="Legallegal1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><h3><em><strong> ISSUES</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
<table class="w-100">
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            User Name</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            Issue</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            Remark</td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter Remark" ForeColor="Red" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            Response</td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Enter Responce" ForeColor="Red" 
                SetFocusOnError="True">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="send" />
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

