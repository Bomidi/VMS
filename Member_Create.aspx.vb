Imports System.Data.SqlClient

Partial Class Member_Create
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()

        Catch ex As Exception
            MsgBox(ex.Message.ToString)

        End Try
    End Sub

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submit.Click
        cmd.CommandText = "insert into Members (mem_id,mem_name,password,address,cont_no,education,email) values('" & txtmember_id.Text & "','" & txtmember_name.Text & "','" & txtpassword.Text & "','" & txtmember_add.Text & "','" & txtcontact_no.Text & "','" & txteducation.Text & "','" & txtemail_id.Text & "')"
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        Session("member_name") = txtmember_name.Text
        Response.Redirect("Member_Welcome.aspx")

    End Sub
End Class
