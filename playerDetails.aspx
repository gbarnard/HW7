<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="playerDetails.aspx.vb" Inherits="playerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Player Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="sql_playerDetails" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.gbarnard_HW7_Data %>" SelectCommand="SELECT * FROM [gbarnard_HW7_Data] WHERE ([playerID] = @playerID)" >
            
            <SelectParameters>
                <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="sql_playerDetails" Height="50px" Width="287px" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="PLayerName" HeaderText="Player Name" SortExpression="PLayerName" />
                <asp:BoundField DataField="TeamName" HeaderText="Team Name" SortExpression="TeamName" />
                <asp:BoundField DataField="PlayerRole" HeaderText="Player Role" SortExpression="PlayerRole" />
                <asp:BoundField DataField="KD" HeaderText="K/D" SortExpression="KD" />
                <asp:BoundField DataField="DomCaps" HeaderText="Dom Caps" SortExpression="DomCaps" />
                <asp:BoundField DataField="Slayer" HeaderText="Slayer" SortExpression="Slayer" />
                <asp:BoundField DataField="SND" HeaderText="SND" SortExpression="SND" />
            </Fields>
        </asp:DetailsView>
</asp:Content>

