<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="EagleGallery.aspx.cs" Inherits="main_master.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="branding" runat="server">
    <h3>EagleGallery</h3>
    <strong>EG</strong>
</asp:Content>

<asp:Content ContentPlaceHolderID="navigation" runat="server">
    <li class="active ">
        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle bg-danger">
            <i class="fas fa-archive "></i>
            Archive
        </a>
        <ul class="collapse list-unstyled " id="homeSubmenu">
            <li>
                <a href="#" class="bg-danger">2019</a>
            </li>
            <li>
                <a href="#" class="bg-danger">2018</a>
            </li>
            <li>
                <a href="#" class="bg-danger">2017</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="#">
            <i class="fas fa-edit"></i>
            Post
        </a>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <div class="tz-gallery">

        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Park">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/2.jpg">
                        <img src="../images/2.jpg" class="img-fluid" alt="Bridge">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/3.jpg">
                        <img src="../images/3.jpg" class="img-fluid" alt="Tunnel">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/4.jpg">
                        <img src="../images/4.jpg" class="img-fluid" alt="Coast">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/5.jpg">
                        <img src="../images/5.jpg" class="img-fluid" alt="Rails">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <a class="lightbox" href="../images/1.jpg">
                        <img src="../images/1.jpg" class="img-fluid" alt="Traffic">
                    </a>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
