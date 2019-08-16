Imports System.Data.SqlClient
Partial Class Issue_Book
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtissue_memid.Text = Session("member_id")
        txtissue_memname.Text = Session("member_name")
        txtissue_id.Text = Session("issue_id")
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
        cmd.CommandText = "Select * from Books where book_id='" & txtissue_id.Text & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        Do While dr.Read
            txtissue_name.Text = dr("book_name")
            txtissue_author.Text = dr("book_author")
            txtissue_publi.Text = dr("publisher")
        Loop
        con.Close()
        txtissue_date.Text = Date.Now.Date
        txtreturn_date.Text = DateAdd(DateInterval.Day, 10, Date.Now.Date)

    End Sub

    Protected Sub btn_issue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_issue.Click
        con.Open()
        cmd.CommandText = "insert into Library (book_id, book_name, book_author,publisher,mem_id,mem_name,issue_date,return_date) values('" & txtissue_id.Text & "','" & txtissue_name.Text & "','" & txtissue_author.Text & "','" & txtissue_publi.Text & "','" & txtissue_memid.Text & "','" & txtissue_memname.Text & "'," & txtissue_date.Text & "," & txtreturn_date.Text & ")"
        cmd.Connection = con
        cmd.ExecuteNonQuery()
        con.Close()
        MsgBox("Book Issued to " & txtissue_memname.Text & " and must be returned on or before " & txtreturn_date.Text, MsgBoxStyle.OkOnly, "OLMS")
        Response.Redirect("Member_Welcome.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Member_Welcome.aspx")
    End Sub
End Class
