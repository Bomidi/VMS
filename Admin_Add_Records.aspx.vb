
Partial Class Admin_Add_Records
    Inherits System.Web.UI.Page

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Welcome.aspx")
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class
