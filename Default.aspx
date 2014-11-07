<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Grant's MLG Stats Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

        
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_MLGstats" AllowPaging="True" AllowSorting="True" Width="457px" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="PLayerName" HeaderText="Player Name" SortExpression="PLayerName" />
                <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="playerDetails.aspx?playerID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
</asp:Content>

