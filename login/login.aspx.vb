
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_gbarnard_Admin") Then
            Response.Redirect("~/admin/viewAllPlayers.aspx")
        ElseIf Roles.IsUserInRole(Login1.UserName, "r_colbert_Admin") Then
            Response.Redirect("~/admin/viewAllPlayers.aspx")
        Else
            Response.Redirect("~/Defualt.aspx")
        End If
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Login1.Focus()

    End Sub
End Class
