<%@ Page Title="" Language="C#" MasterPageFile="~/Legal.master" AutoEventWireup="true" CodeFile="Legalsend.aspx.cs" Inherits="Legalsend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            height: 24px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <center><h3><em><strong>SEND MESSAGE
</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <form id="form1" runat="server">
   <table align="center" cellpadding="0" class="style1"  width="100%">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style2">
                Receiver Type</td>
            <td bgcolor="#E7E7FF">
                
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>C/S Government</asp:ListItem>
                    <asp:ListItem>Director</asp:ListItem>
                    <asp:ListItem>Support Team</asp:ListItem>
                    <asp:ListItem>Financial Agency</asp:ListItem>
                    <asp:ListItem>Expert</asp:ListItem>
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style3">
                Receiver Name</td>
            <td bgcolor="#E7E7FF" class="style1">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style2">
                Subject</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Pls Enter Subject"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style2">
                Message</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox2" runat="server" Height="128px" TextMode="MultiLine" 
                    Width="271px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Pls Enter Message"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Send" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>

