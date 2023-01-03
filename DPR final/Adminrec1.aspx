<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminrec1.aspx.cs" Inherits="Adminrec1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 18px;
        }
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            height: 18px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <center><h3><em><strong> MESSAGE</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <form id="form1" runat="server">
    <table align="center" cellpadding="0" class="style1"  width="80%">
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Sender Type</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="st" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Sender Name</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="sn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Subject</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="s" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
                Message</td>
            <td bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
                Date of Sending</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="sdate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
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
                    Visible="False" Width="283px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="ENTER YOUR RESPONSE" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="#4A3C8C">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Update Response" Visible="False" />
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </center>
</asp:Content>

