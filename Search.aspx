<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="sql_playerDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.gbarnard_HW7_Data %>" SelectCommand="SELECT * FROM [gbarnard_HW7_Data]"></asp:SqlDataSource>
    <br />
    <%If Not IsPostBack Then%>
    Search for a Player or Team by name:&nbsp; &nbsp; &nbsp;
    <asp:TextBox ID="tbSearch" runat="server" Width="180px"></asp:TextBox>
    <%Else%>
    
    Search for another Player or Team by name:&nbsp; &nbsp; &nbsp;
    <asp:TextBox ID="tbSearch2" runat="server" Width="180px"></asp:TextBox>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_playerDataSource">
        <Columns>
            <asp:BoundField DataField="playerID" HeaderText="playerID" InsertVisible="False" ReadOnly="True" SortExpression="playerID" />
            <asp:BoundField DataField="PLayerName" HeaderText="PLayerName" SortExpression="PLayerName" />
            <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
            <asp:BoundField DataField="PlayerRole" HeaderText="PlayerRole" SortExpression="PlayerRole" />
            <asp:BoundField DataField="KD" HeaderText="KD" SortExpression="KD" />
            <asp:BoundField DataField="DomCaps" HeaderText="DomCaps" SortExpression="DomCaps" />
            <asp:BoundField DataField="Slayer" HeaderText="Slayer" SortExpression="Slayer" />
            <asp:BoundField DataField="SND" HeaderText="SND" SortExpression="SND" />
        </Columns>
    </asp:GridView>
    <%End If%>

</asp:Content>

