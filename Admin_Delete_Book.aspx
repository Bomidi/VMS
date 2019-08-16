<%@ Page Title="" Language="VB" MasterPageFile="~/Admin_MasterPage.master" AutoEventWireup="false" CodeFile="Admin_Delete_Book.aspx.vb" Inherits="Admin_Delete_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 3em;
        }
    </style>
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
                <th colspan="3">Delete Book >>>></th>
            </tr>  
            <tr>
                <td> Book ID </td>
                <td> : </td>
                <td>
                    <asp:DropDownList ID="ddl_editbook" runat="server" Width="156px" CssClass="txt"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="btn_delbook" runat="server" CssClass="btn" Text="Delete Book" />
                </td>
            </tr>
        </table>
        <br />
        <table>
              <tr>
                    <th class="style1">Delete Syllabus >>>></th>
              </tr>
              <tr>
                    <td> Syllabus ID </td>
                    <td> : </td>
                    <td>
                        <asp:DropDownList ID="ddl_editsylbus" runat="server" Width="156px" CssClass="txt"></asp:DropDownList>
                    </td>
              </tr>
              <tr>
                    <td align="center">
                        <asp:Button ID="btn_delsylbus" runat="server" CssClass="btn" 
                            Text="Delete Syllabus" Width="150px" />   
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

