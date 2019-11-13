<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="main_master.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>EagleNest</h3>
    <strong>EN</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <h1 class="text-center">Login</h1>
    <form runat="server">
        <div class="form-group">
            <label for="email">Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </label>
            &nbsp;<asp:Textbox class="form-control" id="email" name="email" type="text" runat="server" />
        </div>
        <div class="form-group">
            <label for="password">Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password is required." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </label>
            &nbsp;<asp:Textbox class="form-control" id="password" name="email" type="password" runat="server" />
        </div>
        <asp:Button class="btn btn-primary" id="submit" Tsext="Submit" runat="server" OnClick="submit_Click" />
    </form>
</asp:Content>
