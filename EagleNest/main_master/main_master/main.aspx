<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="main_master.main" %>










<!doctype html>
<html>
<head runat="server">
	
<!--Comment-->
	
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>

	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	
	    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="stylesheet" href="thumbnail-gallery.css">
	
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="../style.css">
    <link href="style4.css" rel="stylesheet" type="text/css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>
	
	

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


	<div class="wrapper " >
    <!-- Sidebar  -->
    <nav id="sidebar" class="bg-danger">
        <div class="sidebar-header bg-danger" >
			
            <h3>Eagle Gallery</h3>
            <strong>EG</strong>
			
        </div>
		

        <ul class="list-unstyled components bg-danger">
            <li class="active ">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle bg-danger">
                    <i class="fas fa-archive " ></i>
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
                    <i class="fas fa-arrow-alt-circle-up"></i>
                    Upload
                </a>
				
				
				
                <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle bg-danger">
                    <i class="fas fa-copy"></i>
                    Share
                </a>
                <ul class="collapse list-unstyled bg-danger" id="pageSubmenu">
                    <li>
                        <a href="#" class="bg-danger">Eagle Blog</a>
                    </li>
                    <li>
                        <a href="#" class="bg-danger">Eagle Sync</a>
                    </li>
                    <li>
                        <a href="#" class="bg-danger">Eagle Connect</a>
                    </li>
                </ul>
            </li>
        </ul>

    </nav>

    <!-- Page Content  -->
    <div id="content">

		
		
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">

                <button type="button" id="sidebarCollapse" class="btn btn-info bg-primary">
                    <i class="fas fa-align-left"></i>
                    <span>Toggle Sidebar</span>
                </button>
            </div>
			
		<!-- Search form -->
<input class="form-control" type="text" placeholder="Search" aria-label="Search">	
			
        </nav>

		<!--PUT BODY HERE! -->
	
		
    </div>
		
</div>
	
	
	    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>
</body>
</html>


