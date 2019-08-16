<%@ Page Title="Welcome" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Welcome.aspx.vb" Inherits="Member_Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 206px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right: 100px;">
        <h1>Welcome&nbsp;  <asp:Label ID="lblmember_wel" runat="server" Text="Label" CssClass="txt" Visible="false" ForeColor="Gold"></asp:Label></h1>
           <table>
                <tr>
                    <td align="left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="btn" />
                    </td>
                </tr>
           </table>   
           <center>
                <img src="Images/books.jpg" alt="" style="border: medium outset #008000;" width="200px" height="195px" />
                <table>
                    <tr>
                        <th colspan="3"><strong>Books >>></strong></th>
                    </tr>
                    <tr>
                        <td> Issue Book </td>
                        <td>
                            <asp:DropDownList ID="ddl_issuebook" runat="server" Width="156px"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btn_issue" runat="server" Text="Click Issue Book" CssClass="btn" />
                        </td>
                    </tr>
                    <tr>
                        <td>Return Book </td>
                        <td>
                            <asp:DropDownList ID="ddl_returnbook" runat="server" Width="156px"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="bt_return" runat="server" Text="Click Return Book" CssClass="btn" />
                        </td>
                    </tr>
                </table>
                <br />
                <table>
                    <tr>
                        <th colspan="3">Syllabus >>></th>
                    </tr>
                    <tr>
                        <td>Download Syllabus</td>
                        <td class="style1">
                            <asp:DropDownList ID="ddl_down_sylbus" runat="server" Width="156px"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btn_dwnd" runat="server" Text="Download Here" CssClass="btn" />
                        </td>
                    </tr>
                </table>
           </center>
    </div>
</asp:Content>

