<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="main_master.Blog.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="text-center">
        <h1><%= name %></h1>
        <form runat="server">
        <% if (Session["loggedIn"] != null && Session["uid"].ToString() != uid) { %>
            <% if (followingUser) { %>
            <asp:Button ID="unfollow" CssClass="btn btn-primary" Text="Unfollow" OnClick="unfollow_Click" runat="server" />
            <% } else { %>
            <asp:Button ID="follow" CssClass="btn btn-primary" Text="Follow" OnClick="follow_Click" runat="server" />
            <% } %>
        <% } %>
        </form>
    </div>
    <ul class="nav nav-tabs">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#posts">Posts</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#following">Following</a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#following">Followers</a></li>
    </ul>
    <div class="tab-content">
        <div id="posts" class="tab-pane show fade active">
            <div class="column-card">
                <% foreach (var post in posts) { %>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><a href='<%= ResolveUrl("View/" + post.blogID) %>'><%= post.title %></a></h5>
                        <h6 class="card-subtitle mb-2 text-muted"><%= name %></h6>
                        <p class="card-text"><%= post.body %></p>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
        <div id="following" class="tab-pane fade">
            <div class="column-card">
                <% foreach (var user in following) { %>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><a href='<%= ResolveUrl("User/" + user.uid) %>'><%= user.name %></a></h5>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
        <div id="followers" class="tab-pane fade">
            <div class="column-card">
                <% foreach (var user in followers) { %>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><a href='<%= ResolveUrl("User/" + user.uid) %>'><%= user.name %></a></h5>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>
</asp:Content>
