<%@ Page Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Post_Form.aspx.cs" Inherits="main_master.Board.Post_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">'
    <title>Eagle Gallery</title>
    
     <link href="../css/Gallery_Post_Form.css" type="text/css" rel="stylesheet" />
    
</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleGallery</h3>
    <strong>EG</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <li>
        <a href="Main.aspx">
            <i class="fas fa-edit"></i>
            Home
        </a>
    </li>
    <li>
        <a href="Post_Form.aspx">
            <i class="fas fa-edit"></i>
            Post
        </a>
    </li>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">

    <form>
<ul class="form-style-1">
    <li><label>Title <span class="required">*</span></label><input type="text" name="field1" class="field-long" placeholder="Title" /></li>
    <li>
        <label>Image <span class="required">*</span></label>
        <input type="file" id="picture" name="picture" class="field-long" accept="image/*"/>
    </li>
    <li>
        <label>Tag</label>
        <select name="field4" class="field-select">
        <option value="Advertise">Advertise</option>
        <option value="Partnership">Partnership</option>
        <option value="General">General</option>
        </select>
    </li>
    <li>
        <label>Discription <span class="required">*</span></label>
        <textarea name="field5" id="field5" class="field-long field-textarea"></textarea>
    </li>
    <li>
        <input type="submit" value="Submit" />
    </li>
</ul>
</form>

    </asp:Content>
