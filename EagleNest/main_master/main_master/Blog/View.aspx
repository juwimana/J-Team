<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="main_master.Blog.View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <div class="text-center">
            <h1><%= title %></h1>
            <h4><a class="text-muted" href='<%= ResolveUrl("User/" + author_uid.ToString()) %>'><%= author_name %></a></h4>
            <h5>Posted: <%= date.ToString() %></h5>
            <h5>Tags: <a href="#">tag1</a> <a href="#">tag2</a></h5>
            <% if (Session["loggedIn"] != null) { %>
            <% if (author) { %>
            <a href='<%= ResolveUrl("Edit/" + blogID) %>'>Edit</a>
            <% } %>
            <a href='<%= ResolveUrl("~/Report/blog/" + blogID) %>'>Report</a>
            <% } %>
        </div>
        <p style="color: black;">
            <%= body %>
        </p>
        <hr />
        <% if (Session["loggedIn"] != null) { %>
        <h2>Comment</h2>
        <form runat="server">
            <div class="form-group">
                <label for="name">
                    Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Comment" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" ID="Name" type="text" placeholder="Display Name" runat="server" />
            </div>
            <div class="form-group">
                <label for="comment">
                    Comment<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Comment" ErrorMessage="Comment is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" TextMode="MultiLine" Rows="10" ID="Comment" type="text" placeholder="Comment" runat="server" />
            </div>
            <asp:Button ID="Submit" class="btn btn-primary" Text="Submit" OnClick="Submit_Click" runat="server" />
        </form>
        <% } %>
        <h2>Comments</h2>
        <% foreach (var comment in comments)
            { %>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><%= comment.name %></h5>
                <p class="card-text"><%= comment.comment %></p>
            </div>
            <div class="card-footer">
                <a href="">Report</a>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>
