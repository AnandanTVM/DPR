<%@ Page Title="" Language="C#" MasterPageFile="~/direcotr.master" AutoEventWireup="true" CodeFile="direcotrteamshedule.aspx.cs" Inherits="direcotrteamshedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center><h3><strong><em>TEAM SHEDULE</em></strong></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server" ForeColor="Lime" CssClass="style1"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Date Of schedule</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="style1" 
                    ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Number Of Mumbers</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style1" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Team Head</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style1" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Duties</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" 
                    CssClass="style1" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C" class="style1">
                Remark</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" 
                    CssClass="style1" ForeColor="Black"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" 
                    CssClass="style1" ForeColor="Black" />
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

