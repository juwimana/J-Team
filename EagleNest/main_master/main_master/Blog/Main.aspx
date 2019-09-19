<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.Blog.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="text-center">
        <h1>Featured Posts</h1>
    </div>
    <div class="card-columns">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Lorem Ipsum</h5>
                <h6 class="card-subtitle mb-2 text-muted">Anon</h6>
                <p class="card-text">
                    Text
                </p>
            </div>
            <div class="card-footer text-muted">
                Posted 5 days ago
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Lorem Ipsum</h5>
                <h6 class="card-subtitle mb-2 text-muted">Anon</h6>
                <p class="card-text">
                    Text
                </p>
            </div>
            <div class="card-footer text-muted">
                Posted 5 days ago
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Lorem Ipsum</h5>
                <h6 class="card-subtitle mb-2 text-muted">Anon</h6>
                <p class="card-text">
                    Text
                </p>
            </div>
            <div class="card-footer text-muted">
                Posted 5 days ago
            </div>
        </div>
    </div>
    <div class="text-center">
        <h1>New Users</h1>
    </div>
    <div class="card-columns">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><a href="User.aspx">New User</a></h5>
                <p class="card-text">
                    <img src="../images/1.jpg" width="100" height="100" />
                </p>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><a href="User.aspx">New User</a></h5>
                <p class="card-text">
                    <img src="../images/1.jpg" width="100" height="100" />
                </p>
            </div>
        </div>
    </div>
    <div class="text-center">
        <h1>About Eagle Blog</h1>
    </div>
    <p>Lorem ipsum</p>
</asp:Content>
