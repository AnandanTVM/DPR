<%@ Page Title="" Language="C#" MasterPageFile="~/supportteam.master" AutoEventWireup="true" CodeFile="supportrec1.aspx.cs" Inherits="supportrec1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h3><em><strong> MESSAGE</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <table align="center" cellpadding="0" class="style1"  width="100%">
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Sender Type</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="st" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Sender Name</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="sn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Subject</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="s" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Message</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Date of Sending</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="sdate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                Reply</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="reply" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Accept" />
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
                <asp:Label ID="Label7" runat="server" Text="Response" Visible="False" 
                    ForeColor="White"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox1" runat="server" Height="134px" TextMode="MultiLine" 
                    Visible="False" Width="196px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Response" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Update Response" Visible="False" />
            </td>
            <td bgcolor="#E7E7FF">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

