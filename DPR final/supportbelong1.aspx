<%@ Page Title="" Language="C#" MasterPageFile="~/supportteam.master" AutoEventWireup="true" CodeFile="supportbelong1.aspx.cs" Inherits="supportbelong1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
            color: #FF0000;
        }
        .style2
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <center><h3><em><strong>COST ESTIMATION</strong></em></h3></center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<center>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Horizontal" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="username" HeaderText="Name" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="adhar" HeaderText="Adhar Number" />
            <asp:BoundField DataField="phone" HeaderText="Contact" />
            <asp:BoundField DataField="typeofbelong" HeaderText="Belongings" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>



</center>



    <table class="w-100">
        <tr>
            <td class="fst-normal" colspan="7">
                <center class="style1"><strong><em>COMPENSATION AMOUNT CALCULATION</em></strong></center></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Land" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;<asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label17" runat="server" Visible="False">Cent</asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Estimated cost" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Amount" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" ForeColor="Lime" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Visible="False">House</asp:Label>
            </td>
            <td class="style2">
                &nbsp;<asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="Label18" runat="server" Visible="False">Sqft</asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Estimated cost" Visible="False"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Visible="False">Amount</asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" ForeColor="Lime" Visible="False"></asp:Label>
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Tree" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Visible="False">Estimated cost</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Visible="False">Amount</asp:Label>
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" ForeColor="Lime" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" class="text-center">
                Total</td>
            <td>
                <em><strong>
                <asp:Label ID="Label16" runat="server" ForeColor="Red"></asp:Label></strong></em>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" align="right">
                <asp:Button ID="Button2" runat="server" Text="calculate" 
                    onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" class="text-center">
                Expected Estimated Amount (x4 times)</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="4">
                Total</td>
            <td>
                &nbsp;</td>
            <td><em><strong>
                <asp:Label ID="Label20" runat="server" ForeColor="Red"></asp:Label></strong></em>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="4">
                Remark</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Send For Approvel" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-center" colspan="4">
                <em><strong>
                <asp:Label ID="Label19" runat="server" ForeColor="Red"></asp:Label></strong></em>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



    </form>


    </asp:Content>

