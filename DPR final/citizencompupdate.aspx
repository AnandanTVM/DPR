<%@ Page Title="" Language="C#" MasterPageFile="~/citizen.master" AutoEventWireup="true" CodeFile="citizencompupdate.aspx.cs" Inherits="citizencompupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h3><center><em><strong>COMPLAINTS UPDATE</strong></em></center></h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <form id="form1" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" GridLines="Horizontal" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="528px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="date" HeaderText="DATE" />
            <asp:BoundField DataField="type" HeaderText="TYPE" />
            <asp:HyperLinkField DataNavigateUrlFields="cid" 
                DataNavigateUrlFormatString="citizencompupdate1.aspx?{0}" 
                DataTextField="cupdate" HeaderText="STATUS" />
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
   
   
    </form>
   </center>
</asp:Content>

