﻿<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="contactUs.aspx.vb" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="padding-right: 15%; padding-left: 30%" >
        <br />
        <%If Not IsPostBack Then%>Your email Address: <br />
        <asp:TextBox ID="senderEmail" runat="server" Width="295px"></asp:TextBox>
        <br />
        <br />
        Your Message:<br />
        <asp:TextBox ID="senderMessage" runat="server" Columns="30" EnableTheming="True" Height="339px" Rows="20" Width="315px"></asp:TextBox>
    <br />
    <asp:Button ID="btn_Send" runat="server" Text="Send" Height="27px" Width="104px" />
    <asp:Label ID="lbl_Sent" runat="server"></asp:Label>
        <br />

        <br />

        <!-- If you are in postback, display confimation label -->
        <%Else%> <%End If%>
    </div>
</asp:Content>

