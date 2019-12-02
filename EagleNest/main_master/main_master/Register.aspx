<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="main_master.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>Eagle Nest</h3>
    <strong>EN</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <h1 class="text-center">Register</h1>
        <form runat="server">
            <div class="form-group">
                <label for="email">
                    Email:<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" ID="email" name="email" type="text" placeholder="Email" runat="server" />
            </div>
            <div class="form-group">
                <label for="">
                    First Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fname" ErrorMessage="First Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" ID="fname" nane="fname" type="text" placeholder="First Name" runat="server" />
            </div>
            <div class="form-group">
                <label for="">
                    Last Name<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="lname" ErrorMessage="Last Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" ID="lname" nane="lname" type="text" placeholder="Last Name" runat="server" />
            </div>
            <div class="form-group">
                <label for="password">
                    Password:<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" ID="password" name="email" type="password" placeholder="Password" runat="server" />
            </div>
            <div class="form-group">
                <label for="password">
                    Repeat Password:<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="password2" ErrorMessage="You must enter the same pasword." ForeColor="Red"></asp:CompareValidator>
                </label>
                &nbsp;<asp:TextBox class="form-control" ID="password2" name="email" type="password" placeholder="Password" runat="server" />
            </div>
            <asp:Button class="btn btn-primary" ID="submit" Text="Submit" runat="server" OnClick="submit_Click" />
            <asp:Label ID="Error" style="color: red;" runat="server" />
        </form>
    </div>
</asp:Content>
