<%@ Page Language="VB" AutoEventWireup="false" CodeFile="xplayerDetails.aspx.vb" Inherits="playerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_playerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.gbarnard_HW7_Data %>" DeleteCommand="DELETE FROM [gbarnard_HW7_Data] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [gbarnard_HW7_Data] ([PLayerName], [TeamName], [PlayerRole], [KD], [DomCaps], [Slayer], [SND]) VALUES (@PLayerName, @TeamName, @PlayerRole, @KD, @DomCaps, @Slayer, @SND)" SelectCommand="SELECT * FROM [gbarnard_HW7_Data] WHERE ([playerID] = @playerID)" UpdateCommand="UPDATE [gbarnard_HW7_Data] SET [PLayerName] = @PLayerName, [TeamName] = @TeamName, [PlayerRole] = @PlayerRole, [KD] = @KD, [DomCaps] = @DomCaps, [Slayer] = @Slayer, [SND] = @SND WHERE [playerID] = @playerID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
            </SelectParameters>
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
         <span class="deletedPlayer"><asp:Label ID="lbl_deletedPlayer" runat="server"></asp:Label></span>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="sql_playerDetails" Height="50px" Width="287px">
            <Fields>
                <asp:BoundField DataField="PLayerName" HeaderText="Player Name" SortExpression="PLayerName" />
                <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                <asp:BoundField DataField="PlayerRole" HeaderText="Player Role" SortExpression="PlayerRole" />
                <asp:BoundField DataField="KD" HeaderText="K/D" SortExpression="KD" />
                <asp:BoundField DataField="DomCaps" HeaderText="Dom Caps" SortExpression="DomCaps" />
                <asp:BoundField DataField="Slayer" HeaderText="Slayer" SortExpression="Slayer" />
                <asp:BoundField DataField="SND" HeaderText="SND" SortExpression="SND" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
