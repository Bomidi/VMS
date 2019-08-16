<%@ Page Title="Issue Book" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Issue_Book.aspx.vb" Inherits="Issue_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <div id="text" style="right :100px;">
            <form id="form1" action="#">
                <table>
                    <tr>
                       <th colspan="3"><strong>Issue Book >>></strong></th>
                    </tr>
                    <tr>
                        <td> Book ID </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_id" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Book Name </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_name" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Book Author </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_author" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Publisher </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_publi" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Member Id </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_memid" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Member Name </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_memname" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Issue Date </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtissue_date" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td> Return Date </td>
                        <td> : </td>
                        <td>
                            <asp:TextBox ID="txtreturn_date" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <asp:Button ID="btn_issue" runat="server" Text="Issue Book" CssClass="btn" Width="156px" />
                        </td>
                    </tr>
                </table>
                <div>
                    <table>
                        <tr>
                            <td align="right">
                                <asp:Button ID="btn_back" runat="server" Text="Go Back" CssClass="btn" Font-Size="Medium" />
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
</asp:Content>

