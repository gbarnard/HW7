
Partial Class players
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_time.Text = TimeOfDay.ToShortTimeString
    End Sub
End Class

