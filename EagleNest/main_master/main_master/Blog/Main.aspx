<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.Blog.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <div class="text-center">
            <h1>Latest posts</h1>
        </div>
        <div class="card-columns">
            <% foreach (var post in posts)
                { %>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a href='<%= ResolveUrl("View/" + post.blogID) %>'><%= post.title %></a></h5>
                    <h6 class="card-subtitle mb-2 text-muted"><a href='<%= ResolveUrl("User/"+ post.author_uid) %>'><%= post.author_name %></a></h6>
                    <p class="card-text"><%= post.body %></p>
                </div>
            </div>
            <% } %>
        </div>
        <% if (Session["loggedIn"] == null)
            { %>
        <div class="text-center">
            <h1>About Eagle Blog</h1>
        </div>
        <p>Eagle Blog is a place for USI students to post about their lifes, school, and extracuricial activities.</p>
        <% }
        else
        { %>
        <div class="text-center">
            <h1>Feed</h1>
        </div>
        <div class="card-columns">
            <% foreach (var post in follow_posts)
                { %>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a href='<%= ResolveUrl("View/" + post.blogID) %>'><%= post.title %></a></h5>
                    <h6 class="card-subtitle mb-2 text-muted"><a href='<%= ResolveUrl("User/" + post.author_uid) %>'><%= post.author_name %></a></h6>
                    <p class="card-text"><%= post.body %></p>
                </div>
            </div>
            <% } %>
        </div>
        <% } %>
    </div>
</asp:Content>
