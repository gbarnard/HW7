<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="false" CodeFile="newPlayer.aspx.vb" Inherits="newPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Create a New Player
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="sql_playerData" runat="server" ConnectionString="<%$ ConnectionStrings:dbo.gbarnard_HW7_Data %>" DeleteCommand="DELETE FROM [gbarnard_HW7_Data] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [gbarnard_HW7_Data] ([PLayerName], [TeamName], [PlayerRole], [KD], [DomCaps], [Slayer], [SND]) VALUES (@PLayerName, @TeamName, @PlayerRole, @KD, @DomCaps, @Slayer, @SND)" SelectCommand="SELECT * FROM [gbarnard_HW7_Data]" UpdateCommand="UPDATE [gbarnard_HW7_Data] SET [PLayerName] = @PLayerName, [TeamName] = @TeamName, [PlayerRole] = @PlayerRole, [KD] = @KD, [DomCaps] = @DomCaps, [Slayer] = @Slayer, [SND] = @SND WHERE [playerID] = @playerID">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="playerID" DataSourceID="sql_playerData" DefaultMode="Insert" HorizontalAlign="Center">
            <EditItemTemplate>
              
            </EditItemTemplate>
            <InsertItemTemplate>

                <table>
                    <tr>
                        <td style="text-align:right;">
                            Player Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_playerName" runat="server" Text='<%# Bind("PLayerName") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_PlayerName" runat="server" ErrorMessage="Please Enter The Player Name" cssClass="validationError" ControlToValidate="tb_playerName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Team Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_TeamName" runat="server" Text='<%# Bind("TeamName") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_TeamName" runat="server" ErrorMessage="Please Enter the Team Name" CssClass="validationError" ControlToValidate="tb_TeamName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Player Role:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_PlayerRole" runat="server" Text='<%# Bind("PlayerRole") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            K/D:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_KD" runat="server" Text='<%# Bind("KD") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_KD" runat="server" ErrorMessage="Please Enter the Kill/Death Ratio" CssClass="validationError" ControlToValidate="tb_KD"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                          Dom Caps:  
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_DomCaps" runat="server" Text='<%# Bind("DomCaps") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            Slayer
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="tb_Slayer" runat="server" Text='<%# Bind("Slayer") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                           SND: 
                        </td>
                        <td style="text-align:left;">
                           <asp:TextBox ID="tb_SND" runat="server" Text='<%# Bind("SND") %>' /> 
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td style="text-align:left;">
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>
                    
                </table>
 </InsertItemTemplate>
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:FormView>
</asp:Content>

