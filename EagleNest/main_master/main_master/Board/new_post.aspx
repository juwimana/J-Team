<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="new_post.aspx.cs" Inherits="main_master.Board.new_post" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <link rel="stylesheet" type="text/css" href="/css/select_josh_styles.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="branding" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <form runat="server">

    <div class="container-fluid">
        <div class="row  justify-content-center">
            <div class="col text-center">
                <h5>Title</h5>
            </div>
        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Label runat="server" ID="new_post_title"></asp:Label>
            </div>
            <br/>
            <br/>
        </div>
        <div class="row  justify-content-center">
            <div class="col text-center">
                <h5>Description</h5>
            </div>


        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Label runat="server" ID="new_post_description"></asp:Label>
                <br/>
            </div>


        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Label runat="server" ID="new_post_image_label" ></asp:Label>
            </div>
        </div>
        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:Image runat="server" ID="new_post_image" Style="width: 100%;" />
            </div>
        </div>




        <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option1" GroupName="options" Checked="true"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option2" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option3" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option4" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option5" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option6" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option7" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option8" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option9" GroupName="options"/>
                </div></div>
                <div class="row  justify-content-center">
            <div class="col-9 text-center">
                <asp:RadioButton runat="server" Visible="false" id ="option10" GroupName="options"/>
                </div></div>
                

            </div>


        <div class="row  justify-content-center">
            <div class="col-9 text-center">
            <asp:Button ID="new_post_edit"  runat="server" OnClick="new_post_edit_click" Text="Edit" />
            <asp:Button ID="new_post_submit"  runat="server" OnClick="new_post_submit_click" Text="Submit" />


                </div>
        </div>
        











    </div>



    
    


    </form>
</asp:Content>