﻿<%@ Page Title="" Language="C#" MasterPageFile="~/csgov.master" AutoEventWireup="true" CodeFile="csgovexpectedfund1.aspx.cs" Inherits="csgovexpectedfund1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
        .style2
        {
            height: 20px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h3><em><strong> Expected Fund Flow</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table width="100%" >
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Fagency Id</td>
            <td bgcolor="#E7E7FF" class="style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Date of Update</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Type Of Project</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Expected Amount</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#4A3C8C">
                Remark</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Approve" />
            </td>
        </tr>
    </table>
    </form>

</asp:Content>

