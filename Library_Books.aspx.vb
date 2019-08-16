
Partial Class Library_Books
    Inherits System.Web.UI.Page

    Protected Sub gvall_record_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gvall_record.SelectedIndexChanged
        Response.Redirect("Member_Home.aspx")
    End Sub

    
End Class
