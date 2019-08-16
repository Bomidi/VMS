<%@ Page Title="Admin Record" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Record.aspx.vb" Inherits="Admin_Record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table>
                    <tr>
                        <td align="right">
                        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn" />
                        </td>
                    </tr>
            </table> 
    <div id="text" style="right:100px;">
       <ul style="font-size: x-large; color: #00CCFF; text-decoration: none; list-style-type: circle">
            <li><a href="Admin_Syllabus_Record.aspx" 
                    style="font-size: x-large; text-decoration: none; color: #0099FF; list-style-type: disc; list-style-position: outside;">Syllabus</a></li>
            <li><a href="Admn_Book_Record.aspx" 
                    style="font-size: x-large; color: #0099FF; text-decoration: none; list-style-type: circle">Books</a></li>
            <li><a href="Admin_Member_Record.aspx" 
                    style="color: #0099FF; font-size: x-large; text-decoration: none; list-style-type: circle">Members</a></li>
            <li><a href="Admin_All_Record.aspx" 
                    style="color: #0099FF; font-size: x-large; text-decoration: none; list-style-type: circle">All Records</a></li>
       </ul>
       <div>
            <table>
                <tr>
                    <td align="right">
                        <asp:Button ID="btn_back" runat="server" CssClass="btn" Text="Go Back" />
                    </td>
                </tr>
            </table>
       </div>
    </div>
</asp:Content>

