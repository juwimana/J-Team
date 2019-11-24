<%@ Page Title="" Language="C#" MasterPageFile="BlogMaster.Master" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="main_master.Blog.Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <div class="text-center">
            <h1>Post</h1>
        </div>
        <form runat="server">
            <div class="form-group">
                <label for="title">
                    Title<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title" ErrorMessage="Title is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="title" class="form-control" type="text" name="title" placeholder="Title" runat="server" />
            </div>
            <div class="form-group">
                <label for="body">
                    Body<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="body" ErrorMessage="Body is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox ID="body" class="form-control" TextMode="MultiLine" Rows="8" name="body" placeholder="Body" runat="server" />
            </div>
            <div class="form-group">
                <label for="tags">Tags</label>
                <asp:TextBox ID="tags" class="form-control" type="text" placeholder="Tags" name="tags" runat="server" />
            </div>
            <asp:Button ID="submit" type="submit" Text="Submit" class="btn btn-primary" OnClick="submit_Click" runat="server" />
        </form>
    </div>
</asp:Content>
