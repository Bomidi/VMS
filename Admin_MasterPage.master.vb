Imports System.Data.SqlClient
Partial Class Admin_MasterPage
    Inherits System.Web.UI.MasterPage
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
End Class

