Imports System.Data.SqlClient
Imports System.Data

Partial Class Admin_Delete_Book
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Welcome.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()

        Catch ex As Exception
            MsgBox(ex.Message.ToString)

        End Try

        'catch book id from book table
        cmd.CommandText = "Select * from Books"
        cmd.Connection = con
        dr = cmd.ExecuteReader

        Do While dr.Read
            ddl_editbook.Items.Add(dr("book_id"))

        Loop
        con.Close()

        'catch sylbus id from Syllabus 

        con.Open()
        cmd.CommandText = "Select * from Syllabus"
        cmd.Connection = con
        dr = cmd.ExecuteReader

        Do While dr.Read
            ddl_editsylbus.Items.Add(dr("sylbus_id"))

        Loop
        con.Close()

    End Sub

    Protected Sub btn_delbook_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_delbook.Click
        con.Open()
        cmd.CommandText = "Delete from Books where book_id= '" & ddl_editbook.SelectedItem.Text & "'"
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("Admin_Welcome.aspx")

    End Sub

    Protected Sub btn_delsylbus_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_delsylbus.Click
        con.Open()
        cmd.CommandText = "Delete from Syllabus where sylbus_id= '" & ddl_editsylbus.SelectedItem.Text & "'"
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("Admin_welcome.aspx")

    End Sub
End Class
