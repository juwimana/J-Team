<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="main_master.Blog.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="text-center">
        <h1>Username</h1>
        <h5 class="text-muted">Status message</h5>
    </div>
    <nav class="navbar navbar-expand-sm bg-light justify-content-center">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="User.aspx">Posts</a></li>
            <li class="nav-item"><a class="nav-link" href="Following.aspx">Following</a></li>
            <li class="nav-item"><a class="nav-link" href="Followers.aspx">Followers</a></li>
        </ul>
    </nav>
    <div class="card-columns">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><a href="View.aspx">Post</a></h5>
                <h6 class="card-subtitle mb-2 text-muted">User</h6>
                <p class="card-text">Post body</p>
            </div>
            <div class="card-footer text-muted">
                Posted 1 day ago
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><a href="View.aspx">Post</a></h5>
                <h6 class="card-subtitle mb-2 text-muted">User</h6>
                <p class="card-text">Post body</p>
            </div>
            <div class="card-footer text-muted">
                Posted 1 day ago
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><a href="View.aspx">Post</a></h5>
                <h6 class="card-subtitle mb-2 text-muted">User</h6>
                <p class="card-text">Post body</p>
            </div>
            <div class="card-footer text-muted">
                Posted 1 day ago
            </div>
        </div>
    </div>
    <nav style="margin-top: 10px;">
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </nav>
</asp:Content>
