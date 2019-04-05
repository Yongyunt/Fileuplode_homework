<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server">
</asp:GridView>
<asp:FileUpload ID="FileUpload1" runat="server" />
<br />
<asp:Button ID="Buttonadd" runat="server" Text="ฮั่นแน่" OnClick="Buttonadd_Click" />
<asp:Label ID="LabelUP" runat="server" Text="เพื่มแล้วนะฉัด" ForeColor="#FF5050" Visible="False"></asp:Label>
</asp:Content>

