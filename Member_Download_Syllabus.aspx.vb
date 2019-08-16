Imports System.Data.SqlClient
Imports System.Exception
Imports System.IO.FileNotFoundException
Partial Class Member_Download_Syllabus
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtdwd_name.Text = Session("dwdsylbus_name")
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
        cmd.CommandText = "Select * from Syllabus where sylbus_name='" & txtdwd_name.Text & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        Do While dr.Read
            txtdwd_id.Text = dr("sylbus_id")
            txtdwd_name.Text = dr("sylbus_name")

        Loop
        con.Close()

    End Sub

    Protected Sub btn_dwnload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_dwnload.Click
        con.Open()
        cmd.CommandText = "Select * from Syllabus where file_name='" & txtdwd_file.Text & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        Do While dr.Read
            'Response.ContentType = dr("content")
            Response.WriteFile(dr("file_name"))
        Loop
        con.Close()

    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Member_Welcome.aspx")

    End Sub
End Class
