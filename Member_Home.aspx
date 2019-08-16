<%@ Page Title="Member Home" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Home.aspx.vb" Inherits="_Member_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="text" style="right: 100px;">
        <h1>Welcome To Online Library Managment System</h1>
        <center>
            <img src="Images/New_Library.jpg" alt="" width="500px" height="200px" style="border-style: outset; border-color: #008000;" />
        
        <form id="form1" action="#">
            <table>
                <tr>
                    <th colspan="3"><strong>Login</strong></th>
                </tr>
                <tr>
                    <td>Member Id </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtmem_id" runat="server" Width="156px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>Member Name </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtmem_name" runat="server" Width="156px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtmem_pwd"  TextMode="Password" runat="server" Width="156px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="btnmember_submit" runat="server" Text="Login" CssClass="btn" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblmember" runat="server" Text="Label" Visible="False" 
                            Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
                <br />
            <table>
                <tr align="center">
                    <th>
                        <strong>New To Library?</strong>
                    </th>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnmember_newAC" runat="server" Text="Create New Member" CssClass="btn" />
                    </td>
                </tr>
            </table>
        </form>
        </center>
    </div>
</asp:Content>