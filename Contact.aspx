<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="text" style="right:100px;">
        <center>
            <p style="font-family: Lucida Handwriting; font-size:22px; height: 100px; color:#FFFFFF;" >Bhaumik Mevada<br /><br />
            Email : mevadabhaumik09@gmail.com</p>
        </center>
       <br />
       <br />
       <br />
       <br />
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

