
Partial Class newPlayer
    Inherits System.Web.UI.Page
    Protected Sub _ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted
        Response.Redirect("~/Admin/viewAllPlayers.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        FormView1.Focus()
    End Sub
End Class
