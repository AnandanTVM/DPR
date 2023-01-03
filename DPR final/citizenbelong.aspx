<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizenbelong.aspx.cs" Inherits="citizenbelong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h3>
<em>
<strong>
UPDATE BELONGINGS
</strong></em></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" >
    <table class="w-100" cellpadding="4">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:Label ID="Label1" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Address</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="62px" 
                    Width="334px"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter address" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Aadhar Number</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Adhar number" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Emergency Contact Number</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Phone Number" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Type of belongings</td>
            <td bgcolor="#E7E7FF">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Land</asp:ListItem>
                    <asp:ListItem>Land &amp; House</asp:ListItem>
                    <asp:ListItem>Land &amp; Tree</asp:ListItem>
                    <asp:ListItem>Land,House &amp; tree</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                <asp:Label ID="Label5" runat="server" Visible="False" CssClass="style1">Land(cent)</asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox8" runat="server" Visible="False" TextMode="Number"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter Land details" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                <asp:Label ID="Label3" runat="server" Visible="False" CssClass="style1">House(sqft)</asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox6" runat="server" Visible="False" TextMode="Number"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter House details" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                <asp:Label ID="Label4" runat="server" Visible="False" CssClass="style1">Number Of Tree</asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox9" runat="server" Visible="False" TextMode="Number"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter Number Of Tree" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
            </td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="correct these" ShowMessageBox="True" />
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

