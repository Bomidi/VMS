Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System.IO
Imports System.Web
Imports System.Data


Partial Class Admin_Add_Syllabus
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dr As SqlDataReader
    Dim dt As New DataTable

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Add_Record.aspx")
    End Sub

    Protected Sub btnadd_sylbus_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd_sylbus.Click
        Dim extension As String = System.IO.Path.GetExtension(fu_sylbus.PostedFile.FileName).ToLower()
        Dim Type As String = Nothing
        If (extension = ".pdf") Then
            Dim intFileNameLength As Integer
            Dim strFileNamePath As String
            Dim strFileNameOnly As String
            strFileNamePath = fu_sylbus.PostedFile.FileName
            intFileNameLength = InStr(1, StrReverse(strFileNamePath), "\")
            strFileNameOnly = Mid(strFileNamePath, (Len(strFileNamePath) - intFileNameLength) + 2)
            Dim br As New BinaryReader(fu_sylbus.PostedFile.InputStream)
            fu_sylbus.PostedFile.SaveAs("D:\OLMS\Onlin Library Management system\UploadFile\" & strFileNamePath)
            cmd.CommandText = "Insert into Syllabus(sylbus_id, sylbus_name, file_name, content) values(@id,@name,@file,@cont)"
            cmd.Connection = con
            cmd.Parameters.Add("@id", txtsylbus_id.Text)
            cmd.Parameters.Add("@name", txtsylbus_name.Text)
            cmd.Parameters.Add("@file", fu_sylbus.FileName)
            cmd.Parameters.Add("@cont", br.ReadBytes(fu_sylbus.PostedFile.ContentLength))
            cmd.ExecuteNonQuery()
            con.Close()
            lbladd_sylbus.Visible = True
            lbladd_sylbus.Text = "File Upload Success."
            txtsylbus_id.Text = Nothing
            txtsylbus_name.Text = Nothing
        Else
            lbladd_sylbus.Visible = True
            lbladd_sylbus.Text = "Not a Valid file format"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()

        Catch ex As Exception
            MsgBox(ex.Message.ToString)

        End Try
    End Sub
End Class
