<%@ Page Title="Download Syllabus" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Download_Syllabus.aspx.vb" Inherits="Member_Download_Syllabus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="text" style="right:100px;">
        <form id="form1" action="#">
            <table>
                <tr>
                    <th><strong> Download Syllabus >>> </strong></th>
                </tr>
                <tr>
                    <td>Syllabus ID </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtdwd_id" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td> Syllabus Name </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtdwd_name" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Syllabus File Name </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtdwd_file" runat="server" Width="156px" CssClass="txt"></asp:TextBox>                            
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3">
                        <asp:Button ID="btn_dwnload" runat="server" Width="156px" Text="Download" CssClass="btn" Font-Size="Medium" />
                    </td>
                </tr>
            </table>
            <div>
                <table>
                    <tr>
                        <td align="right">
                            <asp:Button ID="btn_back" Text="Go Back" runat="server" CssClass="btn" />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</asp:Content>

