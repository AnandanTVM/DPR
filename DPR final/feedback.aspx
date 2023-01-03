<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        .style2
        {
            height: 33px;
            color: #FFFFFF;
        }
        .style3
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <center><h3><strong><em>FEEDBACK</em></strong></h3></center></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <ul>
        <li>
            <center>
                <table align="center" cellpadding="4" class="style1"  width="50%">
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style3" valign="middle" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style4" valign="middle" bgcolor="#E7E7FF">
                            <asp:Label ID="Label3" runat="server" ForeColor="#0066FF"></asp:Label>
                        </td>
                        <td bgcolor="#E7E7FF">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                        </td>
                        <td class="style2" valign="middle" bgcolor="#4A3C8C">
                Enter Name</td>
                        <td class="style1" valign="middle" bgcolor="#E7E7FF">
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="225px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E7E7FF" class="style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style3" valign="middle" bgcolor="#4A3C8C">
                Title</td>
                        <td class="style4" valign="middle" bgcolor="#E7E7FF">
                            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="225px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E7E7FF">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Title" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style3" valign="middle" bgcolor="#4A3C8C">
                Feedback</td>
                        <td class="style4" valign="middle" bgcolor="#E7E7FF">
                            <asp:TextBox ID="TextBox3" runat="server" Height="92px" TextMode="MultiLine" 
                    Width="225px"></asp:TextBox>
                        </td>
                        <td bgcolor="#E7E7FF">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Feedback" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style3" valign="middle" bgcolor="#4A3C8C">
                Phone</td>
                        <td class="style4" valign="middle" bgcolor="#E7E7FF">
                            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="225px" 
                                TextMode="Number"></asp:TextBox>
                        </td>
                        <td bgcolor="#E7E7FF">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Phone Number" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Enter 10 digit Phone number" 
                                ForeColor="Red" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style10" bgcolor="#4A3C8C">
                            &nbsp;</td>
                        <td class="style6" bgcolor="#E7E7FF">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Update" 
                    Width="88px" />
                        </td>
                        <td bgcolor="#E7E7FF">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1" bgcolor="#4A3C8C">
                        </td>
                        <td class="style1" bgcolor="#4A3C8C">
                        </td>
                        <td class="style4" bgcolor="#E7E7FF">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="correct these" ShowMessageBox="True" />
                            <br />
                        </td>
                        <td bgcolor="#E7E7FF" class="style1">
                        </td>
                    </tr>
                </table>
            </center>
        </li>
    </ul>
    </form>
   

</asp:Content>

