<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="Followers.aspx.cs" Inherits="main_master.Blog.Followers" %>

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
    <div class="row">
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a href="User.aspx">New User</a></h5>
                    <p class="card-text">
                        <img src="../images/1.jpg" width="100" height="100" />
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a href="User.aspx">New User</a></h5>
                    <p class="card-text">
                        <img src="../images/1.jpg" width="100" height="100" />
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a href="User.aspx">New User</a></h5>
                    <p class="card-text">
                        <img src="../images/1.jpg" width="100" height="100" />
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
