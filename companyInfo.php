<?php 
require("connection.php");
@ob_start();
session_start();
$cid = $_GET['id'];

?>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Tpo Dashboard</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description"
        content="Multikart admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities." />
    <meta name="keywords"
        content="admin template, Multikart admin template, dashboard template, flat admin template, responsive admin template, web app" />
    <meta name="author" content="pixelstrap" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
        rel="stylesheet" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />

    <!-- Font Awesome-->
    <link rel="stylesheet" type="text/css" href="assets1/css/fontawesome.css" />

    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="assets1/css/flag-icon.css" />
    <link href="../Styles/SampleStyleSheet.css" rel="stylesheet" />
    <!-- jsgrid css-->
    <link rel="stylesheet" type="text/css" href="assets1/css/jsgrid.css" />

    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="assets1/css/bootstrap.css" />

    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="assets1/css/admin.css" />
    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>

    <script type="text/javascript"
        src="//cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>

        <style>
            .para{
                margin-left:50px;
            }
            .b1{
                margin-left:60%;
              
            }
            label{
    font-size:20px;
    margin-right:10px;
    background-color:#ff8084;
    width:100%;
    height:25%;
}

input{
    width:350px;
    height:30px;
    padding:20px;
    border-radius:10px;
    margin:10px;
}
table,tr{
    border:2px solid rgb(60,60,60);
    text-indent:15px;
    /* text-shadow:1px 1px 1px white ; */
   
}
table{
    margin-left:20%;
}

@media screen and (max-width:750px) {
             table{
                margin-left:0;
                border:none;

            }
            label,input{
                width:100%;
                display:block;
            }
            label{
                margin-right:-20px;
                font-size:15px;
            }
          input{
            margin: 0;
          }
         
        }
        .page-body{
            background-image:url(company.jpg);
            background-repeat:no-repeat;
            background-size: cover;
        }
        </style>

</head>

<body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    
    <!-- page-wrapper Start-->
    <div class="page-wrapper">

        <!-- Page Header Start-->
        <div class="page-main-header">
            <div class="main-header-right row">
                <div class="main-header-left d-lg-none">
                    <div class="logo-wrapper">
                        <a href="Index.html">
                            <img src="" alt=""></a>
                    </div>
                </div>
                <div class="mobile-sidebar">
                    <div class="media-body text-right switch-sm">
                        <label class="switch"><a href="#"><i id="sidebar-toggle"
                                    data-feather="align-left"></i></a></label>
                    </div>
                </div>
                <div class="nav-right col">
                    <ul class="nav-menus">
                        <li>
                        
                        <li class="onhover-dropdown">
                            <div class="media align-items-center">
                                
                               
                            </div>
                            <ul class="">
                                <li><a href="index.html"  class=" mybutton btn btn-info" onclick="preventBack()">Logout</a>
                                </li>
                            </ul>
                        </li>
                        </li>
                    </ul>
                    <div class="d-lg-none mobile-toggle pull-right"><i data-feather="more-horizontal"></i></div>
                </div>
            </div>
        </div>

        <!-- Page Header Ends -->

        <!-- Page Body Start-->
        <div class="page-body-wrapper">

            <!-- Page Sidebar Start-->
            <div class="page-sidebar">
                <div class="main-header-left d-none d-lg-block">
                    <div class="logo-wrapper">
                        <a href="index.html">
                            <img class="blur-up lazyloaded" alt=""></a>
                    </div>
                </div>

                <div class="sidebar custom-scrollbar">
                    <ul class="sidebar-menu">
                        <li><a class="sidebar-header" href="index.html"><i data-feather="home"></i><span>Dashboard</span></a></li>
                        <li><a class="sidebar-header" href="#"><i data-feather="box"></i><span></span></a>
                            <ul class="sidebar-submenu">
                                <li><a href="TPO_dashboard.php"><i class="fa fa-circle"></i>Company Data</a></li>
                                <li><a href="companyList.php"><i class="fa fa-circle"></i>Update Data</a></li>
                                <li><a href="tpoApproval.php"><i class="fa fa-circle"></i>Approval Data</a></li>
                                <li><a href="link.php"><i class="fa fa-circle"></i>Send Aptitude Link</a></li>
                            </ul>
                        </li>
                      
                    </ul>
                </div>
                
            </div>
            <!-- Page Sidebar Ends-->

           
            <div class="page-body">

                <!-- Container-fluid starts-->
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="page-header-left">
                                    <h3> Company Information
                                        <small>TPO Panel</small>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Container-fluid Ends-->

                
               <?php
                $sql = "SELECT * FROM company_info WHERE id = '$cid'";
                
             $query=mysqli_query($conn,$sql); 
            $row=mysqli_num_rows($query);
            if($row){
                while($res=mysqli_fetch_array($query)){
                       $_SESSION['cid']=   $res['id'];
                       $_SESSION['company']=   $res['company'];
                       $_SESSION['branch']=  $res['branch'];
                       $_SESSION['brule']=    $res['brule'];
                       $_SESSION['jrule']=    $res['jrule'];
                       $_SESSION['bond']=     $res['bond'];
                       $_SESSION['role']=  $res['role'];
                       $_SESSION['aboutc']= $res['aboutc'];
                       $_SESSION['number']=   $res['number'];
                       $_SESSION['sdate']=   $res['sdate'];
                       $_SESSION['edate']=   $res['edate'];
                      

                    
                
                }
            }
            ?>
                            <div id ="outer"class="container-fluid border border-white">
                <form method="POST"  enctype="multipart/form-data" id="form1" style="padding:35px;" >
                         
                         <table style="background-color: #e3f2fd;">
                         <tr><td><label for="fname">Company Name:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['company'];?>" readonly></td></tr>

                         <tr><td><label for="fname">CTC:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['ctc'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Applicable Branches:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo  $_SESSION['branch'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Backlog Rules:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['brule'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Joining Rules:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['jrule'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Bond:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['bond'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Role:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['role'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Start Date:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['sdate'];?>" readonly></td></tr>

                         <tr><td><label for="fname">End Date:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['edate'];?>" readonly></td></tr>


                         <tr><td><label for="fname">About Company:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['aboutc'];?>" readonly></td></tr>

                         <tr><td><label for="fname">Contact No:</label> </td>
                         <td><input type="text" name="" id="" value="<?php echo $_SESSION['number'];?>" readonly></td></tr>

                       
     
                         </table>
                     </form>
                  
        </div>

              
            <!-- footer start-->
          
            <!-- footer end-->
        </div>
    </div>

    <!-- latest jquery-->
    <script src="assets1/js/jquery-3.3.1.min.js"></script>

    <!-- Bootstrap js-->
    <script src="assets1/js/popper.min.js"></script>
    <script src="assets1/js/bootstrap.js"></script>

    <!-- feather icon js-->
    <script src="assets1/js/icons/feather-icon/feather.min.js"></script>
    <script src="assets1/js/icons/feather-icon/feather-icon.js"></script>

    <!-- Sidebar jquery-->
    <script src="assets1/js/sidebar-menu.js"></script>

    <!--Customizer admin-->
    <script src="assets1/js/admin-customizer.js"></script>

    <!-- Jsgrid js-->
    <script src="assets1/js/jsgrid/jsgrid.min.js"></script>
    <script src="assets1/js/jsgrid/griddata-manage-product.js"></script>
    <script src="assets1/js/jsgrid/jsgrid-manage-product.js"></script>

    <!--right sidebar js-->
    <script src="assets1/js/chat-menu.js"></script>

    <!--script admin-->
    <script src="assets1/js/admin-script.js"></script>


</body>

</html>