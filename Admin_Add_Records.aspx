<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_Records.aspx.vb" Inherits="Admin_Add_Records" %>

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
 <div id="text" style="right:100px">
    <ul style="font-size: x-large; color: #0099FF; text-decoration: none; list-style-type: circle">
        <li><a href="Admin_Add_Books.aspx" style="text-decoration: none; color: #33CCFF; font-size: x-large">Add Books </a></li>
        <li><a href="Admin_Add_Syllabus.aspx" style="font-size: x-large; color: #33CCFF; text-decoration: none">Add Syllabus</a></li>
       <%--- li><a href="Admin_All_Record.aspx">All Records</a></li> ---%>
    </ul>
 </div> 
 <div>
        <table>
            <tr>
                <td align="right">
                    <asp:Button ID="btn_back" runat="server" CssClass="btn" Text="Go Back" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

