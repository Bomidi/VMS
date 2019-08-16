<%@ Page Title="" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Login.aspx.vb" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right:100px;">
        <h1>Welcome To Admin Panel </h1>
        <form id="form1" action="#">
            <table>
                <tr>
                    <th colspan="3"><strong> Admin Login >>></strong></th>
                </tr>
                <tr>
                    <td> Admin Name </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtadmin_name" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td> Password </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtadmin_pwd" runat="server" Width="156px" TextMode="Password" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnadmin_login" runat="server" Text="Login" CssClass="btn" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lbladmin_msg" runat="server" Text="Label" Visible="false" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</asp:Content>

