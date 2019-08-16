<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_Books.aspx.vb" Inherits="Admin_Add_Books" %>

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
    <form id="form1" action="#">
        <table>
            <tr>
                <th colspan="3"><strong>Add New Books >>>></strong></th>
            </tr>
            <tr>
                <td> Book ID </td>
                <td> : </td>
                <td>
                    <asp:TextBox ID="txtbook_id" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Book Name </td>
                <td> : </td>
                <td>
                    <asp:TextBox ID="txtbook_name" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Book Author </td>
                <td> : </td>
                <td>
                    <asp:TextBox ID="txtbook_author" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Publisher </td>
                <td> : </td>
                <td>
                    <asp:TextBox ID="txtbook_publi" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Book Type </td>
                <td> : </td>
                <td>
                    <asp:DropDownList ID="ddlbook_type" runat="server" Width="156px">
                        <asp:ListItem>Education</asp:ListItem>
                        <asp:ListItem>Art and Architecture</asp:ListItem>
                        <asp:ListItem>History</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btnadd_book" runat="server" Text="Add Book" CssClass="btn" />
                </td>
                <td colspan="2">
                    <asp:Label ID="lbladd_book" runat="server" Text="Add Book" Visible="False" 
                        Font-Bold="True" ForeColor="Lime"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        <table>
            <tr>
                <td align="right">
                    <asp:Button ID="btn_back" runat="server" CssClass="btn" Text="Go Back" />
                </td>
            </tr>
        </table>
    </div>
    </form>
 </div>
</asp:Content>

