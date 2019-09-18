<%@ Page Title="" Language="C#" MasterPageFile="~/new_main_master.Master" AutoEventWireup="true" CodeBehind="eagleboard.aspx.cs" Inherits="main_master.eagleboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content_place_holder_head" runat="server">
    <style> </style>
    


   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_place_holder_body" runat="server">
    
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
</ul>
<div class="tab-content" id="myTabContent">



  <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
      <asp:Literal ID="testlit" runat="server" />
          
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


</div>
    
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css"    href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"></link>
     <script>
         $('#all').DataTable();
         $('.dataTables_length').addClass('bs-select');
        </script>



</asp:Content>
