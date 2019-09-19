<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="main_master.Blog.Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="text-center">
        <h1>Post</h1>
    </div>
    <form runat="server">
        <div class="form-group">
            <label for="title">Title</label>
            <input class="form-control" type="text" name="title" />
        </div>
        <div class="form-group">
            <label for="body">Body</label>
            <textarea class="form-control" rows="8" name="body"></textarea>
        </div>
        <div class="form-group">
            <label for="tags">Tags</label>
            <input class="form-control" type="text" name="tags" />
        </div>
        <input id="submit" type="submit" value="Submit" class="btn btn-primary" />
    </form>
</asp:Content>
