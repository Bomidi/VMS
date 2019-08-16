Imports System.Data.SqlClient
Partial Class _Member_Home
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()

        Catch ex As Exception
            MsgBox(ex.Message.ToString)

        End Try
    End Sub

    Protected Sub btnmember_newAC_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmember_newAC.Click
        Response.Redirect("Member_Create.aspx")
    End Sub

    Protected Sub btnmember_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmember_submit.Click
        cmd.CommandText = "Select * from Members where mem_id ='" & Trim(txtmem_id.Text) & "' and mem_name = '" & Trim(txtmem_name.Text) & "' and password = '" & Trim(txtmem_pwd.Text) & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader

        If dr.HasRows Then
            Session("member_id") = txtmem_id.Text
            Session("member_name") = txtmem_name.Text
            Response.Redirect("Member_Welcome.aspx")
        Else
            lblmember.Visible = True
            lblmember.Text = "Invalid UserName and Password !!!"

        End If
    End Sub
End Class
