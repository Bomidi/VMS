Imports System.Data.SqlClient
Partial Class Admin_Add_Books
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim da As New Data.SqlClient.SqlDataAdapter

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Add_Record.aspx")
    End Sub

    Protected Sub btnadd_book_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd_book.Click
        cmd.CommandText = "insert into Books (book_id, book_name, book_author,publisher,book_type) values('" & txtbook_id.Text & "','" & txtbook_name.Text & "','" & txtbook_author.Text & "','" & txtbook_publi.Text & "','" & ddlbook_type.SelectedItem.Text & "')"
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        Session("book_id") = txtbook_id.Text
        Session("book_name") = txtbook_name.Text
        Session("book_author") = txtbook_author.Text
        Session("book_publisher") = txtbook_publi.Text

        txtbook_id.Text = Nothing
        txtbook_name.Text = Nothing
        txtbook_author.Text = Nothing
        txtbook_publi.Text = Nothing
        lbladd_book.Visible = True
        lbladd_book.Text = "Add Book Successfully.."
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
