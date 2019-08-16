<%@ Page Title="Admin Welcome" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Welcome.aspx.vb" Inherits="Admin_Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right:100px;">
        <h1>Welcome &nbsp; <asp:Label ID="lbladmin_welcome" runat="server" Text="Label" CssClass="txt" Visible="false" ForeColor="Gold"></asp:Label></h1>
            <table>
                    <tr>
                        <td align="right">
                        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn" />
                        </td>
                    </tr>
            </table> 
                       
        <center>
            <img src="Images/admin.png" alt="" style="border: medium outset #556B2F;" 
                width="200px"; height="195px;" align="middle" />
        </center>
    </div>
</asp:Content>

