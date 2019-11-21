<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.eagleboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <style>
 </style>

    <title>Eagle Board</title>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    <form runat="server">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="gives-tab" data-toggle="tab" href="#gives" role="tab" aria-controls="gives" aria-selected="false">Gives</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="project-tab" data-toggle="tab" href="#project" role="tab" aria-controls="project" aria-selected="false">Project</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="poll-tab" data-toggle="tab" href="#poll" role="tab" aria-controls="poll" aria-selected="false">Poll</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="new-tab" data-toggle="tab" href="#new" role="tab" aria-controls="new" aria-selected="false">New Post</a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">



        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
            <asp:Literal ID="all_lit" runat="server" />

        </div>


        <div class="tab-pane fade" id="gives" role="tabpanel" aria-labelledby="gives-tab">
            <asp:Literal ID="gives_lit" runat="server" />
        </div>


        <div class="tab-pane fade" id="project" role="tabpanel" aria-labelledby="project-tab">
            <asp:Literal ID="project_lit" runat="server" />
        </div>


        <div class="tab-pane fade" id="poll" role="tabpanel" aria-labelledby="poll-tab">
            <asp:Literal ID="poll_lit" runat="server" />
        </div>

        <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">

            <br />



            <div class="container">
                <div class="row">

                    <div class="col" style="margin-left: 20px">
                        Posting Type
                    </div>
                    <div class="col">
                        <ul class="nav nav-pills" id="pills-tab" role="tablist">
                            <li class="form-check col">
                                <input class="form-check-input" type="radio" name="radios" id="gives_radio" value="option1" data-target="#new_gives" checked>
                                <label class="form-check-label" for="gives_radio">
                                    Gives &nbsp 
                                </label>
                            </li>
                            <li class="form-check col">
                                <input class="form-check-input" type="radio" name="radios" id="project_radio" value="option1" data-target="#new_project">
                                <label class="form-check-label" for="project_radio">
                                    Project &nbsp 
                                </label>
                            </li>
                            <li class="form-check col">
                                <input class="form-check-input" type="radio" name="radios" id="poll_radio" value="option1" data-target="#new_poll">
                                <label class="form-check-label" for="poll_radio">
                                    Poll &nbsp 
                                </label>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>










            <div class="tab-content" id="pills-tabContent">
                <br />



                <!--    Below is the container for the new post page of Eagle Gives                    -->
                <div class="tab-pane fade show active" id="new_gives" role="tabpanel" aria-labelledby="pills-gives-tab">
                    <div class="container">
                        <div class="form-group">
                            <label for="give_title_textbox" class="col-2 col-form-label">Title</label>
                            <div class="col">
                               
                                <asp:TextBox ID="give_title_textbox" class="col" runat="server"></asp:TextBox>
                                
                            </div>

                            <small class="form-text text-muted text-center">Write a brief but descriptive title for your listing.</small>

                        </div>
                        <div class="form-group">
                            <label for="give_desc_label" class="col-2 col-form-label">Description</label>
                            <div class="col">
                                <textarea class="form-control" id="give_desc_textarea" rows="3" runat="server"></textarea>
                            </div>

                            <small class="form-text text-muted text-center">Provide a description of your item. Keep in mind the item must be offered for free, and availible on campus.</small>

                        </div>
                        <div class="form-group">
                            <label for="give_image_label" class="col-2 col-form-label">Images</label>
                            <div class="col">
                                <input type="file" class="form-control-file" id="give_image_label" aria-describedby="fileHelp" multiple>
                            </div>

                            <small class="form-text text-muted text-center">Upload images of your item(optional).<br />
                                Please keep file sizes less than 50MB.</small>
                            <br />
                            
                               
                        <asp:Button ID="preview_give_button" class= "col" runat="server" OnClick="preview_give_button_click" Text="Submit" />
                            

                        </div>
                    </div>
                </div>
                <!--    Above is the container for the new post page of Eagle Gives                    -->


                <!--    Below is the container for the new post page of Eagle Project                    -->
                <div class="tab-pane fade" id="new_project" role="tabpanel" aria-labelledby="pills-project-tab">
                    <div class="container">

                        <div class="form-group">
                            <label for="project_title_label" class="col-2 col-form-label">Title</label>
                            <div class="col">
                                <input class="form-control" type="text" value="" id="project_title_label">
                            </div>
                            <small class="form-text text-muted text-center">Write a brief but descriptive title for your listing.</small>
                        </div>

                        <div class="form-group">
                            <label for="project_desc_label" class="col-2 col-form-label">Description</label>
                            <div class="col">
                                <textarea class="form-control" id="project_desc_label" rows="3"></textarea>
                            </div>
                            <small class="form-text text-muted text-center">Provide a description of your project. What are your goals? What skills are you seeking?</small>
                        </div>

                        <div class="form-group">
                            <label for="project_image_label" class="col-2 col-form-label">Images</label>
                            <div class="col">
                                <input type="file" class="form-control-file" id="project_image_label" aria-describedby="fileHelp" multiple>
                            </div>
                            <small class="form-text text-muted text-center">Upload images of your project(optional).<br />
                                Please keep file sizes less than 50MB</small>
                            <br />
                            <input class="col" type='button' value='Preview Posting' id='preview_project_button' />

                        </div>
                    </div>
                </div>
                <!--    Above is the container for the new post page of Eagle Project                    -->




                <!--    Below is the container for the new post page of Eagle Poll                    -->
                <div class="tab-pane fade" id="new_poll" role="tabpanel" aria-labelledby="pills-poll-tab">

                    <div class="container">

                        <div class="form-group">
                            <label for="poll_title_label" class="col-2 col-form-label">Title</label>
                            <div class="col">
                                <input class="form-control" type="text" value="" id="poll_title_label">
                            </div>
                            <small class="form-text text-muted text-center">Write a brief title for your poll.</small>
                        </div>

                        <div class="form-group">
                            <label for="poll_desc_label" class="col-2 col-form-label">Description</label>
                            <div class="col">
                                <textarea class="form-control" id="poll_desc_label" rows="3"></textarea>
                            </div>
                            <small class="form-text text-muted text-center">Provide a description of your poll(Your question).</small>
                        </div>
                        <div class="form-group">
                            <label for="ppoll_image_label" class="col-2 col-form-label">Images</label>
                            <div class="col">
                                <input type="file" class="form-control-file" id="ppoll_image_label" aria-describedby="fileHelp" multiple>
                            </div>
                            <small class="form-text text-muted text-center">Upload images relevant to your poll. If your images corrospond to a particular option, please upload them below on said option.
                                Please keep file sizes less than 50MB</small><br />
                        </div>
                        <div class="row">
                            <div class="col" style="margin-left: 20px">
                                <div class="form-horizontal">
                                    <div class="control-group">
                                        <label class="control-label" for="poll_string">
                                            Option 1</label>
                                        <div class="controls">
                                            <input class="form-control" type="text" id="poll_string" />
                                            <input type="file" class="form-control-file" id="poll_image_label" aria-describedby="fileHelp">
                                            <br />
                                        </div>
                                        <label class="control-label" for="poll_string">
                                            Option 2</label>
                                        <div class="controls">
                                            <input class="form-control" type="text" id="poll_string2" />
                                            <input type="file" class="form-control-file" id="poll_image_label2" aria-describedby="fileHelp">
                                            <br />
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <input type='button' value='Add Option' id='addButton' />
                                <input type='button' value='Remove Option' id='removeButton' />
                                <br />
                                <br />
                                <input class="col" type='button' value='Preview Posting' id='preview_poll_button' />
                            </div>

                        </div>

                    </div>
                </div>
                <!--    Above is the container for the new post page of Eagle Poll                    -->

            </div>

        </div>


    </div>
    </form>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
    <script>
        $('#all_board').DataTable(
            {
                "lengthChange": false,
                "pageLength": 20
            });
        $('.dataTables_length').addClass('bs-select');
        $('#gives_board').DataTable(
            {
                "lengthChange": false,
                "pageLength": 20
            });
        $('.dataTables_length').addClass('bs-select');
        $('#project_board').DataTable(
            {
                "lengthChange": false,
                "pageLength": 20
            });
        $('.dataTables_length').addClass('bs-select');
        $('#poll_board').DataTable(
            {
                "lengthChange": false,
                "pageLength": 20
            });
        $('.dataTables_length').addClass('bs-select');
        $('input[name="radios"]').click(function () {
            $(this).tab('show');
        });
        $(document).ready(function () {

            $("#addButton").click(function () {
                if (($('.form-horizontal .control-group').length + 1) > 20) {
                    alert("Only 20 options are allowed");
                    return false;
                }
                var id = ($('.form-horizontal .control-group').length + 2).toString();
                $('.form-horizontal').append('<div class="control-group" id="control-group' + id + '"><label class="control-label" for="poll_string' + id + '">Option ' + id + '</label><div class="controls' + id + '"><input class="form-control" type="text" id="poll_string' + id + '"/><input type="file" class="form-control-file" id="poll_image_label' + id + '" aria-describedby="fileHelp"><br /></div></div>');
            });

            $("#removeButton").click(function () {
                if ($('.form-horizontal .control-group').length == 1) {
                    alert("Cannot remove any more options");
                    return false;
                }

                $(".form-horizontal .control-group:last").remove();
            });
        });
    </script>



</asp:Content>

