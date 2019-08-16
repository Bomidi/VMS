<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admn_Book_Record.aspx.vb" Inherits="Admin_Book_Record" %>

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
       <h1>Books Record >>></h1>
           <asp:SqlDataSource ID="sd_source" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\LMS_DB.mdf;Integrated Security=True;User Instance=True" 
            SelectCommand="SELECT * FROM [Books] ORDER BY [book_id]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>

            <asp:GridView ID="gv_books" runat="server" AllowPaging="true" 
               AllowSorting="true" AutoGenerateColumns="false" BorderStyle="Dotted" 
               CellPadding="4" DataKeyNames="book_id" DataSourceID="sd_source" 
               Font-Bold="True" Font-Italic="False" ForeColor="#FF6600">
                <Columns>
                    <asp:BoundField DataField="book_id" ReadOnly="true" HeaderText="Book ID" SortExpression="book_id" />
                    <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                    <asp:BoundField DataField="book_author" HeaderText="Book Author" SortExpression="book_author" />
                    <asp:BoundField DataField="publisher" HeaderText="Publisher" SortExpression="publisher" />
                    <asp:BoundField DataField="book_type" HeaderText="Book Type" SortExpression="book_type" />
                </Columns>
            </asp:GridView>
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

