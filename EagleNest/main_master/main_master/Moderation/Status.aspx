<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Status.aspx.cs" Inherits="main_master.Moderation.Status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Change Status</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>Eagle Nest</h3>
    <strong>EN</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <form runat="server">
        <asp:Label ID="PostId" runat="server" />
        <asp:DropDownList ID="ModStatus" runat="server">
            <asp:ListItem Selected="True" Value="0">Ok</asp:ListItem>
            <asp:ListItem Value="1">Reported</asp:ListItem>
            <asp:ListItem Value="2">Reviewing</asp:ListItem>
            <asp:ListItem Value="3">Removed</asp:ListItem>
        </asp:DropDownList>
        <asp:Button Id="Submit" Text="Submit" class="btn btn-primary" runat="server" />
    </form>
</asp:Content>
