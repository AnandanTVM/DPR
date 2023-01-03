<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminHome.aspx.cs" Inherits="adminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
    <p><h4>
        WELCOME
        <asp:Label ID="Label1" runat="server" ForeColor="#FF0066"></asp:Label>
  </h4>  </p>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="w-100">
        <tr>
            <td><a href="Adminsend.aspx">
                <asp:Image ID="Image1" runat="server" Height="178px" 
                    ImageUrl="~/assets/img/com .png" Width="170px" />
                <br />
                Compose message</a></td>
            <td>
            <a href="Adminauth.aspx">
                <asp:Image ID="Image4" runat="server" Height="178px" 
                    ImageUrl="~/assets/img/ap.png" Width="170px" />
                <br />
                Approve</a></td>
            <td>
                <a href="Adminrec.aspx"><asp:Image ID="Image2" runat="server" Height="178px" 
                    ImageUrl="~/assets/img/inbox.png" Width="170px" />
                <br />
                Inbox</a></td>
            <td>
                <a href="AdminBlock.aspx"><asp:Image ID="Image5" runat="server" Height="178px" 
                    ImageUrl="~/assets/img/ban.png" Width="170px" />
                <br />
                Block Member</a></td>
            <td>
                <a href="Adminfeedback.aspx"><asp:Image ID="Image3" runat="server" Height="178px" 
                    ImageUrl="~/assets/img/feed.png" Width="170px" />
                <br />
                Feedback</a></td>
            <td>
                &nbsp;</td>
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
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
    </table>

</asp:Content>

