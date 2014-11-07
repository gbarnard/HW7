<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="viewAllPlayers.aspx.vb" Inherits="Admin_viewAllPlayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">View All Players
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="sql_viewAll" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.gbarnard_HW7_Data %>" DeleteCommand="DELETE FROM [gbarnard_HW7_Data] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [gbarnard_HW7_Data] ([PLayerName], [TeamName], [PlayerRole], [KD], [DomCaps], [Slayer], [SND]) VALUES (@PLayerName, @TeamName, @PlayerRole, @KD, @DomCaps, @Slayer, @SND)" SelectCommand="SELECT * FROM [gbarnard_HW7_Data]" UpdateCommand="UPDATE [gbarnard_HW7_Data] SET [PLayerName] = @PLayerName, [TeamName] = @TeamName, [PlayerRole] = @PlayerRole, [KD] = @KD, [DomCaps] = @DomCaps, [Slayer] = @Slayer, [SND] = @SND WHERE [playerID] = @playerID">
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_viewAll" Width="528px" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="playerID" HeaderText="Player ID" InsertVisible="False" ReadOnly="True" SortExpression="playerID" />
            <asp:BoundField DataField="PLayerName" HeaderText="Player Name" SortExpression="PLayerName" />
            <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
            <asp:BoundField DataField="PlayerRole" HeaderText="Player Role" SortExpression="PlayerRole" />
            <asp:BoundField DataField="KD" HeaderText="K/D" SortExpression="KD" />
            <asp:BoundField DataField="DomCaps" HeaderText="DomCaps" SortExpression="DomCaps" />
            <asp:BoundField DataField="Slayer" HeaderText="Slayer" SortExpression="Slayer" />
            <asp:BoundField DataField="SND" HeaderText="SND" SortExpression="SND" />
            <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="playerDetails.aspx?playerID={0}" Text="Select" />
        </Columns>
    </asp:GridView>


</asp:Content>

