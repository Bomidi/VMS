<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Member_Record.aspx.vb" Inherits="Admin_Member_Record" %>

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
  <div id="text" style="right:200px">
    <h1>Member Record >>></h1>
     <asp:SqlDataSource ID="sd_source" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\LMS_DB.mdf;Integrated Security=True;User Instance=True" 
            SelectCommand="SELECT * FROM [Members] ORDER BY [mem_id]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
            <asp:GridView ID="gv_memrecord" runat="server" AllowPaging="true" 
          AllowSorting="true" AutoGenerateColumns="false" BorderStyle="Dotted" 
          DataKeyNames="mem_id" CellPadding="4" DataSourceID="sd_source" Width="50px" 
          Font-Bold="True" ForeColor="#FF6600">
                <Columns>
                    <asp:BoundField DataField="mem_id" HeaderText="Member ID" ReadOnly="true" SortExpression="mem_id" />
                    <asp:BoundField DataField="mem_name" HeaderText="Member Name" SortExpression="mem_name" />
                    <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="cont_no" HeaderText="Contact No" SortExpression="cont_no" />
                    <asp:BoundField DataField="education" HeaderText="Education" SortExpression="education" />
                    <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
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

