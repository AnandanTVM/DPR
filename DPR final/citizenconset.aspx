<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizenconset.aspx.cs" Inherits="citizenconset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h3><center><em><strong> GIVE CONSENT</strong></em></center></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">
<table width=80%>
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            <asp:Label ID="Label1" runat="server" ForeColor="Lime"></asp:Label>
        </td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            Category</td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Category" 
                ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            Purpose </td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Pourpose" 
                ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C" class="style1">
            Consent</td>
        <td bgcolor="#E7E7FF">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Consent" 
                ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        </td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#4A3C8C">
            &nbsp;</td>
        <td bgcolor="#E7E7FF">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
        <td bgcolor="#E7E7FF">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</form>


</asp:Content>

