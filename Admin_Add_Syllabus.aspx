<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Add_Syllabus.aspx.vb" Inherits="Admin_Add_Syllabus" %>

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
                <th colspan="3"><strong>Add Syllabus >>></strong></th>
            </tr>
            <tr>
                <td> Syllabus ID </td>
                <td> : </td>
                <td>
                    <asp:TextBox ID="txtsylbus_id" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> Syllabus Name </td>
                <td> : </td>
                <td>
                    <asp:TextBox ID="txtsylbus_name" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Select Syllabus </td>
                <td> : </td>
                <td>
                    <asp:FileUpload ID="fu_sylbus" runat="server" CssClass="txt" />
                </td>
                <%--<td>
                       <asp:TextBox ID="txtbook_author" runat="server" Width="156px" CssClass="txt"></asp:TextBox>

                 </td>--%>

            </tr>
            <tr>
                <td align="center">
                        <asp:Button ID="btnadd_sylbus" runat="server" Text="Add Syllabus" CssClass="btn" />
                </td>
                <td colspan="2">
                        <asp:Label ID="lbladd_sylbus" runat="server" Text="Add Syllabus" 
                            Visible="False" ForeColor="Lime"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
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

