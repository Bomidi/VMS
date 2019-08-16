<%@ Page Title="Member Signup" Language="VB" MasterPageFile="~/Main_MasterPage.master" AutoEventWireup="false" CodeFile="Member_Create.aspx.vb" Inherits="Member_Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" style="right:100px";>
        <h1>Welcome To Online Library Managment System</h1>
        <form id="form1" action="#">
            <table>
                <tr>
                    <th colspan="3"><strong>Sign Up</strong></th>
                </tr>
                <tr>
                    <td>Member Id </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtmember_id" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvmember_id" runat="server" 
                            ControlToValidate="txtmember_id" CssClass="txt" 
                            ErrorMessage="Please Enter Member Id" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Member Name </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtmember_name" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="rvmember_name" runat="server" CssClass="txt" 
                            ErrorMessage="Please Enter Member Name" ControlToValidate="txtmember_name" 
                            MaximumValue="z" MinimumValue="a" SetFocusOnError="true" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td> Password </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" Width="156px" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                       <asp:RangeValidator ID="rv_password" runat="server" CssClass="txt" 
                            ErrorMessage="Please Enter Valid Password(8 Digits )" 
                            ControlToValidate="txtpassword" MaximumValue="8" MinimumValue="1" 
                            SetFocusOnError="true" ForeColor="Red"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td> Confirm Password </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtc_password" runat="server" TextMode="Password" CssClass="txt" Width="156px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cv_password" runat="server" CssClass="txt" 
                            ErrorMessage="Please Enter Valid Confirm Password" 
                            ControlToCompare="txtpassword" ControlToValidate="txtc_password" 
                            SetFocusOnError="true" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Address </td>
                    <td> : </td>
                    <td>
                       <asp:TextBox ID="txtmember_add" runat="server" CssClass="txt" Width="156px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rv_address" runat="server" CssClass="txt" 
                            ErrorMessage="Please Enter Proper Address" ControlToValidate="txtmember_add" 
                            SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Contact No. </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtcontact_no" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revcontact_no" runat="server" 
                            ControlToValidate="txtcontact_no" CssClass="txt" 
                            ErrorMessage="Please Enter Valid Contact No" ValidationExpression="\d{10}" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Education </td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txteducation" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rv_education" runat="server" CssClass="txt" 
                            ErrorMessage="Please Enter Proper Education" ControlToValidate="txteducation" 
                            SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Id</td>
                    <td> : </td>
                    <td>
                        <asp:TextBox ID="txtemail_id" runat="server" Width="156px" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="rev_email_id" runat="server" 
                            ErrorMessage="Please Enter Valid Email Id" ControlToValidate="txtemail_id" 
                            SetFocusOnError="true" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="btn_submit" runat="server" Text="Sign Up" CssClass="btn" />
                    </td>
                    
                </tr>
            </table>
        </form>
    </div>
</asp:Content>

