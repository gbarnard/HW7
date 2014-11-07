
Partial Class playerDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedPlayers As String = e.Values("PLayerName").ToString()
        lbl_deletedPlayer.Text = deletedPlayers & " has been deleted from the database"
        Response.AddHeader("REFRESH", "3;URL=./viewAllPlayers.aspx")
    End Sub
End Class
