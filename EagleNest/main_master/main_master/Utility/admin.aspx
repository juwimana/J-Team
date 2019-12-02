<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="main_master.Utility.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <title>Eagle Admin</title>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content_place_holder_body" runat="server">

    <form id="form1" runat="server">




        <div class="accordion" id="acc_pop_board">

            <div class="card">
                <div class="card-header" id="headinganalytics">
                    <h2 class="mb-0">
                        <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapseanalytics" aria-expanded="true" aria-controls="collapseanalytics">
                            Database Analytics(in construction)
                        </button>
                    </h2>
                </div>
                <div id="collapseanalytics" class="collapse" aria-labelledby="headinganalytics" data-parent="#acc_pop_board">
                    <div class="card-body">

                        PUT ANALYTICS HERE


                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header" id="headingthree">
                    <h2 class="mb-0">
                        <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapsethree" aria-expanded="true" aria-controls="collapsethree">
                            Populate User Database(pending fix)
                        </button>
                    </h2>
                </div>
                <div id="collapsethree" class="collapse" aria-labelledby="headingthree" data-parent="#acc_pop_board">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                Number of user to generate:
                            </div>
                        <div class="col">
                            <input type="number" runat="server" class="form-control" id="textbox_number_users">
                            
                        </div>
                            <div class="col"></div>
                        </div>
                        <asp:Button ID="button2" runat="server" OnClick="button_populate_users_Click" Text="Submit" />


                    </div>
                </div>
            </div>



            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Populate Board Database(in construction)
                        </button>
                    </h2>
                </div>
                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#acc_pop_board">
                    <div class="card-body">
                        <div class="row">
                        <div class="col btn-group-vertical">Boards to Populate</div>
                        <div class="col">
                            <div class="form-check">
                                <input class="form-check-input" runat="server" type="checkbox" value="" id="checkbox_gives_pop" checked>
                                <label class="form-check-label" for="checkbox_gives_pop">
                                    Gives
                                </label>
                                <br />
                                <input class="form-check-input" runat="server" type="checkbox" value="" id="checkbox_project_pop" checked>
                                <label class="form-check-label" for="checkbox_project_pop">
                                    Project
                                </label>
                                <br />
                                <input class="form-check-input"  runat="server" type="checkbox" value="" id="checkbox_poll_pop" checked>
                                <label class="form-check-label" for="checkbox_poll_pop">
                                    Poll
                                </label>
                                
                            </div>
                            
                        </div>
                     </div>
                        <hr />
                    <div class="row">
                            <div class="col">
                                Number of postings per board:
                            </div>
                        <div class="col">
                            <input type="number" runat="server" class="form-control" id="number_board_pop">
                            
                        </div>
                            <div class="col"></div>
                        </div>




                        <div class="row">
                            <div class="col"></div>
                        <div class="col">
                            <br />
                    <asp:Button ID="button3" runat="server" OnClick="button_populate_board_Click" Text="Submit" />
                        </div>
                            <div class="col"></div>
                        </div>
                        
                    </div>
                    
                    
        </div>
        </div>




            


            <div class="card">
                <div class="card-header" id="headingdump">
                    <h2 class="mb-0">
                        <button class="btn btn-dark" type="button" data-toggle="collapse" data-target="#collapsedump" aria-expanded="true" aria-controls="collapsedump">
                            Dump Database
                        </button>
                    </h2>
                </div>
                <div id="collapsedump" class="collapse" aria-labelledby="headingdump" data-parent="#acc_pop_board">
                    <div class="card-body">

                        <asp:Button ID="button1" runat="server" OnClick="button_dump_Click" Text="Dump" />
                        <asp:Label ID="label_dump" runat="server" Text="" />

                    </div>
                </div>
            </div>

                        

            <div class="card">
                <div class="card-header" id="headingrebuild">
                    <h2 class="mb-0">
                        <button class="btn btn-dark" type="button" data-toggle="collapse" data-target="#collapserebuild" aria-expanded="true" aria-controls="collapserebuild">
                            Rebuild database from repository build script
                        </button>
                    </h2>
                </div>
                <div id="collapserebuild" class="collapse" aria-labelledby="headingrebuild" data-parent="#acc_pop_board">
                    <div class="card-body">

                        <asp:Button ID="button5" runat="server" OnClick="button_rebuild_Click" Text="Submit" />


                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header" id="headingquery">
                    <h2 class="mb-0">
                        <button class="btn btn-warning" type="button" data-toggle="collapse" data-target="#collapsequery" aria-expanded="true" aria-controls="collapsequery">
                            SQL Query(in construction)
                        </button>
                    </h2>
                </div>
                <div id="collapsequery" class="collapse" aria-labelledby="headingquery" data-parent="#acc_pop_board">
                    <div class="card-body">

                        <asp:Button ID="button4" runat="server" OnClick="button_query_Click" Text="Submit" />


                    </div>
                </div>
            </div>




        </div>




    </form>
</asp:Content>







