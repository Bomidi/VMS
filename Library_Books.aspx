<%@ Page Title="" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Library_Books.aspx.vb" Inherits="Library_Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="text" style="right:100px">
           <h1>Book Records >>></h1>
           <div>
               <asp:SqlDataSource ID="sd_source" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\LMS_DB.mdf;Integrated Security=True;User Instance=True" 
            SelectCommand="SELECT * FROM [Books] ORDER BY [book_id]" 
                   ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                <asp:GridView ID="gvall_record" runat="server" DataSourceID="sd_source" 
                    Width="300px" AllowSorting="true" AutoGenerateColumns="False" 
                    BorderStyle="Dashed" CellPadding="4" DataKeyNames="book_id" AllowPaging="true" 
                    ForeColor="#FF9900">
                    
                    <Columns>
                        <asp:BoundField DataField="book_id" HeaderText="Book ID" ReadOnly="true" SortExpression="book_id" />
                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                        <asp:BoundField DataField="book_author" HeaderText="Book Author" SortExpression="book_author" />
                        <asp:BoundField DataField="publisher" HeaderText="Publisher" SortExpression="publisher" />
                        <asp:BoundField DataField="book_type" HeaderText="Book Type" SortExpression="book_type" />

                    </Columns>
                    <EditRowStyle BorderColor="#9933FF" BorderStyle="Ridge" />
                </asp:GridView>
           </div>
           <div>
                <table>
                    <tr>
                        <td align="right">
                            <asp:Button ID="btn_back" runat="server" Text="Go Back" CssClass="btn" /> 
                        </td>
                    </tr>
                </table>
           </div>
    </div>
</asp:Content>

