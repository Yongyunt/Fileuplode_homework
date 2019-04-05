<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="calendar.aspx.cs" Inherits="calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Calendar ID="Calendar1" runat="server" Height="598px" OnSelectionChanged="Calendar1_SelectionChanged" Width="1381px"></asp:Calendar>
<p>
</p>
</asp:Content>

