Imports System.Data.SqlClient
Partial Class Return_Book
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtreturn_id.Text = Session("returnbook_id")
        Try

            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
        cmd.CommandText = "Select * from Library where book_id='" & txtreturn_id.Text & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader()
        Do While dr.Read
            txtreturn_name.Text = dr("book_name")
            txtreturn_author.Text = dr("book_author")
            txtreturn_publi.Text = dr("publisher")
            txtreturn_memid.Text = dr("mem_id")
            txtreturn_memname.Text = dr("mem_name")
            txtissue_date.Text = dr("issue_date")
            txtreturn_date.Text = dr("return_date")

        Loop
        con.Close()

    End Sub

    Protected Sub btn_return_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_return.Click
        con.Open()
        cmd.CommandText = "delete from Library where book_id='" & txtreturn_id.Text & "'"
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Book Returned", MsgBoxStyle.OkOnly, "OLMS")
        Session("returnbook_id") = Nothing
        Response.Redirect("Member_Welcome.aspx")

    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Member_Welcome.aspx")
    End Sub
End Class
