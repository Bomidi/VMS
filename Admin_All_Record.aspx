<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_All_Record.aspx.vb" Inherits="Admin_All_Record" %>

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
    <h1>All Record >>></h1>
    <asp:SqlDataSource ID="sd_source" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\LMS_DB.mdf;Integrated Security=True;User Instance=True" 
            SelectCommand="SELECT * FROM [Library] ORDER BY [mem_id]" 
         ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
         <asp:GridView ID="gv_allrecord" runat="server" AllowPaging="true" 
         AllowSorting="true" AutoGenerateColumns="false" BorderStyle="Dotted" 
         CellPadding="4" DataSourceID="sd_source" Width="300px" Font-Bold="True" 
         ForeColor="#FF6600" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="book_id" HeaderText="Book Id" 
                    SortExpression="book_id" />
                <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                <asp:BoundField DataField="book_author" HeaderText="Book Author" SortExpression="book_author" />
                <asp:BoundField DataField="publisher" HeaderText="Publisher" SortExpression="publisher" />
                <asp:BoundField DataField="mem_id" HeaderText="Member ID" SortExpression="mem_id" />
                <asp:BoundField DataField="mem_name" HeaderText="Member Name" SortExpression="mem_name" />
                <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                <asp:BoundField DataField="return_date" HeaderText="Return Date" SortExpression="return_date" />
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

