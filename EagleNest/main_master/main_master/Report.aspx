<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="main_master.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Title</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>Eagle Nest</h3>
    <strong>EN</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <div class="text-center">
            <h1>Report</h1>
        </div>
        <form runat="server">
            <label for="Comment">Comment:</label>
            <asp:TextBox class="form-control" ID="Comment" TextMode="MultiLine" name="Comment" Rows="8" placeholder="Comment" runat="server" />
            <asp:Button class="btn btn-primary" ID="Submit" Text="Submit" runat="server" OnClick="Submit_Click" />
        </form>
    </div>
</asp:Content>
