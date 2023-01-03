<%@ Page Title="" Language="C#" MasterPageFile="~/supportteam.master" AutoEventWireup="true" CodeFile="supportcategoryreport.aspx.cs" Inherits="supportcategoryreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><strong><em>Category Report</em></strong></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server" ForeColor="Lime"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Type Of Report</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server" ForeColor="Black">Category Wise Report</asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
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
                Report</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox2" runat="server" Height="239px" TextMode="MultiLine" 
                    Width="440px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Report" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
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

