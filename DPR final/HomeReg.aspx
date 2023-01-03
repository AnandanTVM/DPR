<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="HomeReg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <h3><em><strong>REGISTER HERE</strong></em></h3></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table class="w-100">
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF"></asp:Label>
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
            <td rowspan="12">
                <asp:Image ID="Image2" runat="server" Height="382px" 
                    ImageUrl="~/assets/img/2.jpg" Width="697px" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                User.Type</td>
            <td bgcolor="#E7E7FF">
                
                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Citizen</asp:ListItem>
                    <asp:ListItem>C/S Government</asp:ListItem>
                    <asp:ListItem>Director</asp:ListItem>
                    <asp:ListItem>Support Team</asp:ListItem>
                    <asp:ListItem>Financial Agency</asp:ListItem>
                    <asp:ListItem>Leagal Coordinator</asp:ListItem>
                    <asp:ListItem>Expert</asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select User Type" 
                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                User.Name</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="225px"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter User Name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Password</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" TextMode="Password" 
                    Width="225px"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Password Mismatch" ForeColor="Red">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Confirm.Password</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="225px"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Conform Password" 
                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Email</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" TextMode="Email" 
                    Width="225px"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Email" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter Email Id" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ControlToValidate="TextBox4">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C" class="style1">
                Phone</td>
            <td bgcolor="#E7E7FF">
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" TextMode="Number" 
                    Width="225px"></asp:TextBox>
            </td>
            <td bgcolor="#E7E7FF">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Phone Number" 
                    ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="Enter 10 digit Phone number" 
                                ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td align=right bgcolor="#4A3C8C">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Cancel" />
            </td>
            <td bgcolor="#E7E7FF">
                <asp:Button ID="Button2" runat="server" Text="Register" 
                    onclick="Button2_Click" />
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
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td rowspan="3" bgcolor="#E7E7FF">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="correct these" ShowMessageBox="True" />
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
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#4A3C8C">
                &nbsp;</td>
            <td bgcolor="#E7E7FF">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

