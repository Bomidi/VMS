Imports System.Data.SqlClient

Partial Class Admin_Welcome
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbladmin_welcome.Visible = True
        lbladmin_welcome.Text = Session("admin_name")
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")

    End Sub
End Class
