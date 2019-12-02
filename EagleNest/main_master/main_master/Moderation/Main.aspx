<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.Moderation.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Moderation</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>Eagle Moderation</h3>
    <strong>EM</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <div class="text-center">
            <h1>Moderation</h1>
        </div>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Post Type</th>
                    <th scope="col">Reporter</th>
                    <th scope="col">Comment</th>
                    <th scope="col">Date</th>
                    <th scope="col">Link</th>
                    <th scope="col">Status</th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var report in reports) { %>
                <tr>
                    <th scope="row"><%= report.post_type_str %></th>
                    <td><%= report.reporter_name %></td>
                    <td><%= report.comment %></td>
                    <td><%= report.date.ToString() %></td>
                    <td><a href='<%= ResolveUrl(report.link) %>'>View</a></td>
                    <td><a href='<%= ResolveUrl("Status/" + report.id) %>'>Change Status</a></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</asp:Content>
