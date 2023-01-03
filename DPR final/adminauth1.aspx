<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminauth1.aspx.cs" Inherits="adminauth1" %>

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
    <p>
       <h3> <strong><font color="green"> User Verification</font>  </h3></strong></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table width=50% class="nav-justified">
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                </td>
            <td class="style1" bgcolor="#E7E7FF">
                </td>
        </tr>
        <tr>
            <td class="style2" align="left" bgcolor="#4A3C8C">
                User Type</td>
            <td class="style5" align="left" bgcolor="#E7E7FF">
                <asp:Label ID="ut" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" align="left" bgcolor="#4A3C8C">
                User Name</td>
            <td align="left" class="style1" bgcolor="#E7E7FF">
                <asp:Label ID="un" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" align="left" bgcolor="#4A3C8C">
                Phone</td>
            <td align="left" bgcolor="#E7E7FF">
                <asp:Label ID="ph" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" align="left" bgcolor="#4A3C8C">
                Mail ID</td>
            <td align="left" bgcolor="#E7E7FF">
                <asp:Label ID="mid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" align="center" bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="mid0" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" align="left" bgcolor="#4A3C8C">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Reject" />
            </td>
            <td align="left" bgcolor="#E7E7FF">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Accept" />
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

