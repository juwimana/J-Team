<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="main_master.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
    <h3>EagleNest</h3>
    <strong>EN</strong>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="container">
        <div class="text-center">
            <h1>Edit Profile</h1>
        </div>
        <form runat="server">
            <h2>General Settings</h2>
            UID:
        <asp:Label ID="Uid" runat="server" />
            <label for="FirstName">First Name:</label>
            <asp:TextBox class="form-control" ID="FirstName" name="FirstName" type="text" placeholder="First Name" runat="server" />
            <label for="LastName">Last Name:</label>
            <asp:TextBox class="form-control" ID="LastName" name="LastName" type="text" placecholder="Last Name" runat="server" />
            <label for="Major">Major:</label>
            <asp:TextBox class="form-control" ID="Major" name="Major" type="text" placeholder="Major" runat="server" />
            <label for="Classification">Classification</label>
            <asp:DropDownList ID="Classification" name="Classification" runat="server">
                <asp:ListItem Selected="True" Value="Freshman">Freshman</asp:ListItem>
                <asp:ListItem Value="Sophmore">Sophmore</asp:ListItem>
                <asp:ListItem Value="Junior">Junior</asp:ListItem>
                <asp:ListItem Value="Senior">Senior</asp:ListItem>
            </asp:DropDownList>
            <label for="Phone">Phone:</label>
            <asp:TextBox class="form-control" ID="Phone" name="Phone" type="text" placeholder="Phone" runat="server" />
            <label>Org Affiliation:</label>
            <asp:TextBox class="form-control" ID="OrgAffiliation" type="text" runat="server" />
            <asp:Button class="btn btn-primary" ID="GeneralSubmit" Text="Submit" OnClick="GeneralSubmit_Click" runat="server" />
            <h2>Security</h2>
            <label for="Password">Current Password:</label>
            <asp:TextBox class="form-control" type="password" ID="Password" placeholder="Password" runat="server" />
            <label for="NewPassword">New Password:</label>
            <asp:TextBox class="form-control" type="password" ID="NewPassword" placeholder="New Password" runat="server" />
            <label for="NewPassword2">New Password Again:</label>
            <asp:TextBox class="form-control" type="password" ID="NewPassword2" placeholder="New Password Agian" runat="server" />
            <asp:Button class="btn btn-primary" ID="SecuritySubmit" Text="Submit" OnClick="SecuritySubmit_Click" runat="server" />
            <asp:Label ID="Error" runat="server" Style="color: red;"></asp:Label>
        </form>
    </div>
</asp:Content>
