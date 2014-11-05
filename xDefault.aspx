<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xDefault.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grant's MLG Stats Page</title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lbl_Welcome" runat="server"></asp:Label>
        <asp:SqlDataSource ID="sql_MLGstats" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.gbarnard_HW7_Data %>" 
            SelectCommand="SELECT * FROM [gbarnard_HW7_Data]" DeleteCommand="DELETE FROM [gbarnard_HW7_Data] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [gbarnard_HW7_Data] ([PLayerName], [TeamName], [PlayerRole], [KD], [DomCaps], [Slayer], [SND]) VALUES (@PLayerName, @TeamName, @PlayerRole, @KD, @DomCaps, @Slayer, @SND)" UpdateCommand="UPDATE [gbarnard_HW7_Data] SET [PLayerName] = @PLayerName, [TeamName] = @TeamName, [PlayerRole] = @PlayerRole, [KD] = @KD, [DomCaps] = @DomCaps, [Slayer] = @Slayer, [SND] = @SND WHERE [playerID] = @playerID">
            <DeleteParameters>
                <asp:Parameter Name="playerID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PLayerName" Type="String" />
                <asp:Parameter Name="TeamName" Type="String" />
                <asp:Parameter Name="PlayerRole" Type="String" />
                <asp:Parameter Name="KD" Type="Decimal" />
                <asp:Parameter Name="DomCaps" Type="Decimal" />
                <asp:Parameter Name="Slayer" Type="Decimal" />
                <asp:Parameter Name="SND" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PLayerName" Type="String" />
                <asp:Parameter Name="TeamName" Type="String" />
                <asp:Parameter Name="PlayerRole" Type="String" />
                <asp:Parameter Name="KD" Type="Decimal" />
                <asp:Parameter Name="DomCaps" Type="Decimal" />
                <asp:Parameter Name="Slayer" Type="Decimal" />
                <asp:Parameter Name="SND" Type="Decimal" />
                <asp:Parameter Name="playerID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="hyperlink_New" runat="server" NavigateUrl="~/newPlayer.aspx">Add a New Player</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_MLGstats" AllowPaging="True" AllowSorting="True" Width="457px">
            <Columns>
                <asp:BoundField DataField="PLayerName" HeaderText="Player Name" SortExpression="PLayerName" />
                <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="playerDetails.aspx?playerID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
