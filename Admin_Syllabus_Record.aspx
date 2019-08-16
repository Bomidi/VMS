<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Syllabus_Record.aspx.vb" Inherits="Admin_Syllabus_Record" %>

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
        <h1>Syllabus Record >>></h1>
        <asp:SqlDataSource ID="sd_source" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\LMS_DB.mdf;Integrated Security=True;User Instance=True" 
        
            SelectCommand="SELECT [sylbus_id], [sylbus_name], [file_name] FROM [Syllabus] ORDER BY [sylbus_id]" 
            ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            <asp:GridView ID="gv_sylbus" runat="server" AllowSorting="true" 
            AutoGenerateColumns="false" BorderStyle="Dotted" CellPadding="4" 
            DataKeyNames="sylbus_id" AllowPaging="true" DataSourceID="sd_source" 
            Width="300px" Font-Bold="True" ForeColor="#FF6600">
                <Columns>
                    <asp:BoundField DataField="sylbus_id" HeaderText="Syllabus ID" ReadOnly="true" SortExpression="sylbus_id" />
                    <asp:BoundField DataField="sylbus_name" HeaderText="Syllabus Name" SortExpression="sylbus_name" />
                    <asp:BoundField DataField="file_name" HeaderText="File Name" SortExpression="file_name" />
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

