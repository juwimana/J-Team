<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="main_master.eagleboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    
    <link rel="stylesheet" type="text/css" href="/css/select_josh_styles.css">
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
                                    <asp:RequiredFieldValidator runat="server" validationgroup="give" ID="give_title_text_req" ControlToValidate="give_title_textbox" ErrorMessage="Posting require a Title." ForeColor="#CC3300"></asp:RequiredFieldValidator>

                                </div>

                                <small class="form-text text-muted text-center">Write a brief but descriptive title for your listing.</small>

                            </div>
                            <div class="form-group">
                                <label for="give_desc_label" class="col-2 col-form-label">Description</label>
                                <div class="col">
                                    <asp:TextBox ID="give_desc_textbox" class="col" Rows="3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" validationgroup="give" ID="give_desc_text_req" ControlToValidate="give_desc_textbox" ErrorMessage="Posting require a description." ForeColor="#CC3300"></asp:RequiredFieldValidator>
                                </div>

                                <small class="form-text text-muted text-center">Provide a description of your item. Keep in mind the item must be offered for free, and availible on campus.</small>

                            </div>
                            <div class="form-group">
                                <label for="give_image_label" class="col-2 col-form-label">Image</label>

                                <asp:FileUpload runat="server" ID="give_image_upload" class="col" />

                                <small class="form-text text-muted text-center">Upload images of your item(optional).<br />
                                    Please keep file sizes less than 5MB.</small>
                                <br />


                                <asp:Button ID="preview_give_button" validationgroup="give" class="col" runat="server" OnClick="preview_give_button_click" Text="Preview Post" />


                            </div>
                        </div>
                    </div>
                    <!--    Above is the container for the new post page of Eagle Gives                    -->


                    <!--    Below is the container for the new post page of Eagle Project                    -->
                    <div class="tab-pane fade" id="new_project" role="tabpanel" aria-labelledby="pills-project-tab">
                        <div class="container">
                            <div class="form-group">
                                <label for="project_title_textbox" class="col-2 col-form-label">Title</label>
                                <div class="col">

                                    <asp:TextBox ID="project_title_textbox" class="col" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" validationgroup="project" ID="RequiredFieldValidator5" ControlToValidate="project_title_textbox" ErrorMessage="Posting require a Title." ForeColor="#CC3300"></asp:RequiredFieldValidator>

                                </div>

                                <small class="form-text text-muted text-center">Write a brief but descriptive title for your project.</small>

                            </div>
                            <div class="form-group">
                                <label for="project_desc_textbox" class="col-2 col-form-label">Description</label>
                                <div class="col">
                                    <asp:TextBox ID="project_desc_textbox" class="col" Rows="3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" validationgroup="project" ID="RequiredFieldValidator6" ControlToValidate="project_desc_textbox" ErrorMessage="Posts require a description." ForeColor="#CC3300"></asp:RequiredFieldValidator>
                                </div>

                                <small class="form-text text-muted text-center">Provide a description of your project. </small>

                            </div>
                            <div class="form-group">
                                <label for="project_image_upload" class="col-2 col-form-label">Image</label>

                                <asp:FileUpload runat="server" ID="project_image_upload" class="col" />

                                <small class="form-text text-muted text-center">Upload an image relevant to your project(optional).<br />
                                    Please keep file sizes less than 5MB.</small>
                                <br />


                                <asp:Button ID="preview_project_button" validationgroup="project" class="col" runat="server" OnClick="preview_project_button_click" Text="Preview Post" />


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
                                <asp:TextBox ID="poll_title_textbox" class="col"  runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" validationgroup="poll" ID="RequiredFieldValidator1" ControlToValidate="poll_title_textbox" ErrorMessage="Posting require a Title." ForeColor="#CC3300"></asp:RequiredFieldValidator>
                            </div>
                            <small class="form-text text-muted text-center">Write a brief title for your poll.</small>
                        </div>

                        <div class="form-group">
                            <label for="poll_desc_label" class="col-2 col-form-label">Description</label>
                            <div class="col">
                                <asp:TextBox ID="poll_description_textbox" class="col" Rows="3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" validationgroup="poll" ID="RequiredFieldValidator2" ControlToValidate="poll_description_textbox" ErrorMessage="Posting require a Description" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                            </div>
                            <small class="form-text text-muted text-center">Provide a description of your poll(Your question).</small>
                        </div>
                        <div class="form-group">
                            <label for="poll_image_label" class="col-2 col-form-label">Image</label>
                            <div class="col">
                                <asp:FileUpload runat="server" ID="poll_image_upload" class="col" />
                            </div>
                            <small class="form-text text-muted text-center">Upload an image relevant to your poll.
                                Please keep file sizes less than 5MB</small><br />
                        </div>
                        <div class="row">
                        <div class="col">

                            <asp:Label runat="server" Visible="true" Text="Option 1" ID="option_label_1" />
                            <asp:RequiredFieldValidator runat="server" validationgroup="poll" ID="RequiredFieldValidator3" ControlToValidate="option_textbox_1" ErrorMessage="Polls require at least two options" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="option_textbox_1" class="col" runat="server" Visible="true"></asp:TextBox>
                            
                            <asp:Label runat="server" Visible="true" Text="Option 2" ID="option_label_2" />
                            <asp:RequiredFieldValidator runat="server" validationgroup="poll" ID="RequiredFieldValidator4" ControlToValidate="option_textbox_2" ErrorMessage="Polls require at least two options" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="option_textbox_2" class="col" runat="server" Visible="true"></asp:TextBox>
                            
                            <asp:Label runat="server" visible="true" Text="Option 3" ID="option_label_3" />
                            <asp:TextBox ID="option_textbox_3" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 4" ID="option_label_4" />
                            <asp:TextBox ID="option_textbox_4" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 5" ID="option_label_5" />
                            <asp:TextBox ID="option_textbox_5" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 6" ID="option_label_6" />
                            <asp:TextBox ID="option_textbox_6" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 7" ID="option_label_7" />
                            <asp:TextBox ID="option_textbox_7" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 8" ID="option_label_8" />
                            <asp:TextBox ID="option_textbox_8" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 9" ID="option_label_9" />
                            <asp:TextBox ID="option_textbox_9" class="col" runat="server" visible="true"></asp:TextBox>
                            <asp:Label runat="server" visible="true" Text="Option 10" ID="option_label_10" />
                            <asp:TextBox ID="option_textbox_10" class="col" runat="server" visible="true"></asp:TextBox>
                            
                            <br /> 
                        </div>
                            <br />
                            </div>
                            <br />
                            <!--Removed dynamic poll options, and images on poll options.
                                Didn't seem like a priority, and was more complex than originally estimated.-->
                            <div class="row">
                                
                                    <br />
                                <asp:Button ID="preview_poll_button"  validationgroup="poll" class= "col" runat="server" OnClick="preview_poll_button_click" Text="Preview Post" />
                            
                              </div> 
                        <br /><br /><br /><br /><br /> 
                    
                    </div>
                </div>
                <!--    Above is the container for the new post page of Eagle Poll                    -->

                </div>

            </div>
            

        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <!--Not sure why, but having the jquery script refrences on this page(overriding the ones in master, fix a bug with the posting type radio buttons -->
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

                                                  $(document).ready(function ($) {
                                                      $(".clickable-row").click(function () {
                                                          window.location = $(this).data("href");
                                                      }
                                                      );

                                                  });


    </script>




</asp:Content>

