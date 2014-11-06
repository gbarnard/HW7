
Partial Class Search
    Inherits System.Web.UI.Page


    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim searchWord As String

        searchWord = "Select * From gbarnard_HW7_Data Where (PLayerName Like '%" + tbSearch.Text.ToString() + "%') or (TeamName Like '%" + tbSearch.Text.ToString() + "%')"
        sql_playerDataSource.SelectCommand = searchWord

    End Sub

    Protected Sub tbSearch2_TextChanged(sender As Object, e As EventArgs) Handles tbSearch2.TextChanged
        Dim searchWord As String

        searchWord = "Select * From gbarnard_HW7_Data Where (PLayerName Like '%" + tbSearch2.Text.ToString() + "%') or (TeamName Like '%" + tbSearch2.Text.ToString() + "%')"
        sql_playerDataSource.SelectCommand = searchWord

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbSearch.Focus()
    End Sub

End Class
