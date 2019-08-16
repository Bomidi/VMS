Imports System.Data.SqlClient
Partial Class Admin_Login
    Inherits System.Web.UI.Page
    Dim con As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            con.ConnectionString = ("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\OLMS\Onlin Library Management system\App_Data\LMS_DB.mdf;Integrated Security=True;User Instance=True")
            con.Open()

        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub btnadmin_login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadmin_login.Click
        cmd.CommandText = "Select * from Admin_login where admin_name= '" & Trim(txtadmin_name.Text) & "' and admin_pwd= '" & Trim(txtadmin_pwd.Text) & "'"
        cmd.Connection = con
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Session("admin_name") = txtadmin_name.Text
            Response.Redirect("Admin_Welcome.aspx")
        Else
            lbladmin_msg.Visible = True
            lbladmin_msg.Text = "Invalid Username and Password !!!"

        End If
    End Sub
End Class
