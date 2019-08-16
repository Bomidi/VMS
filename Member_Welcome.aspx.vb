Imports System.Data.SqlClient
Partial Class Member_Welcome
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmember_wel.Visible = True
        lblmember_wel.Text = Session("member_name")

        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try

        'Fetch Book Id from Books
        cmd.CommandText = "Select * from Books"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_issuebook.Items.Add(dr("book_id"))

        Loop
        Session("issue_id") = ddl_issuebook.SelectedValue
        con.Close()

        'Fetch Book Id from Library

        con.Open()
        cmd.CommandText = "Select * from Library where mem_name ='" & lblmember_wel.Text & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_returnbook.Items.Add(dr("book_id"))

        Loop
        con.Close()
        Session("returnbook_id") = ddl_returnbook.SelectedValue

        'Fetch Syllabus from Syllabus
        con.Open()
        cmd.CommandText = "Select * from Syllabus"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_down_sylbus.Items.Add(dr("sylbus_name"))

        Loop
        con.Close()
        Session("ddlsylbus_name") = ddl_down_sylbus.SelectedValue

    End Sub

    Protected Sub btn_issue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_issue.Click
        Response.Redirect("Issue_Book.aspx")
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("member_id") = Nothing
        Session("member_name") = Nothing
        Session("book_id") = Nothing
        Session("book_name") = Nothing
        Session("book_author") = Nothing
        Session("book_publisher") = Nothing
        Response.Redirect("Member_Home.aspx")

    End Sub

    Protected Sub bt_return_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles bt_return.Click
        Response.Redirect("Return_Book.aspx")
    End Sub

    Protected Sub btn_dwnd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_dwnd.Click
        Response.Redirect("Member_Download_Syllabus.aspx")

    End Sub
End Class
