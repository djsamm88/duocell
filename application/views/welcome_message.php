<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>PPOB</title>
    <link rel='shortcut icon' href='//humbanghasundutankab.go.id/old/wp-content/uploads/favicon.ico' />
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="<?php echo base_url()?>bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url()?>bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url()?>bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url()?>dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="<?php echo base_url()?>dist/css/skins/_all-skins.min.css">

  <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>plugins/pace/pace.min.css">
  <link rel="stylesheet" href="<?php echo base_url()?>assets/jqueryui.css">

  <link rel="stylesheet" href="<?php echo base_url()?>assets/datetimepicker/datetimepicker.css">
  <link rel="stylesheet" href="<?php echo base_url()?>assets/toastr/toastr.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<style type="text/css">
  @media (min-width: 768px) {
    .modal-lg {
      width: 90%;
     max-width:1200px;
    }
  }
</style>

</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="<?php echo base_url()?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Sim</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>LPPD</b></span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

         
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu t4_saldo">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-danger t4_notif_chat" ></span>
            </a>

            
            <ul class="dropdown-menu ">
              <li class="header t4_saldo">Saldo :<span class="t4_notif_saldo"></span> </li>
              <li>
                <!-- inner menu: contains the actual data -->
                    <div id="t4_data_count"></div>
              </li>              
            </ul>
          
          </li>
          


           <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-lock"></i>
              <!--<span class="label label-success">4</span>-->
            </a>
            <ul class="dropdown-menu">
              <li class="header">Welcome :<br>
                  <b>
                    [<?php echo level($session['level'])?> ] -  
                    <?php echo $session['nama_admin']?> -
                    <?php echo $session['email_admin']?>                
                  </b>
                  <br>
                  <br>
                  <?php 
                    if($this->session->userdata('level') !=5)
                      {?>
                  <a href='#' onclick="eksekusi_controller('<?php echo base_url()?>index.php/profil/data_session_user','Profil');return false;">
                    <span class="fa  fa-user"></span> Update Profil
                  </a>
                    <?php } ?>

              </li>              
              <li>
                <!-- inner menu: contains the actual data -->                
                

              </li>
              <li class="footer"><a href="<?php echo base_url()?>index.php/login/logout"><font color='red'>Keluar</font></a></li>
              </ul>
          </li>

          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
      
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo base_url()?>/assets/img/avatar.png" class="img" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $this->session->userdata('nama_admin')?> </p>
          <!-- Status -->
          <a href="#"><?php echo $this->session->userdata('email_admin')?></a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <!--
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
    -->
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Menu</li>
       

        
        <?php include "menu_kiri.php"?>



      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" id="">
      
      <?php include "isi.php"?>
      <?php //var_dump($session['nama_admin'])?>
    
  </div>


  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Sistem Informasi POS
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2020 - <?php echo date('Y')?> <a href="#">-</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="<?php echo base_url()?>assets/jQuery/jquery-2.2.3.min.js"></script>
<script src="<?php echo base_url()?>assets/jqueryui.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->



<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url()?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="<?php echo base_url()?>bower_components/chart.js/Chart.js"></script>

<script src="<?php echo base_url()?>bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>


<!-- AdminLTE App -->
<script src="<?php echo base_url()?>dist/js/adminlte.min.js"></script>

<script type="text/javascript" src="<?php echo base_url()?>bower_components/PACE/pace.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
<script type="text/javascript">
  var BASE_PATH = "<?php echo base_url()?>";
</script>
<script type="text/javascript" src="<?php echo base_url()?>js/notify.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>js/custom.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>js/dataTables.bootstrap.js"></script>


<script type="text/javascript" src="<?php echo base_url()?>assets/datetimepicker/datetimepicker.js"></script>
<script type="text/javascript" src="<?php echo base_url()?>assets/datetimepicker/datetimepicker.pt-BR.js"></script>


<script type="text/javascript" src="<?php echo base_url()?>assets/toastr/toastr.min.js"></script>

<script src="https://cdn.firebase.com/js/client/2.2.3/firebase.js"></script>
<script type="text/javascript">
  //var dbRef = new Firebase("https://tamorastore-com.firebaseio.com/");
</script>

<script type="text/javascript">
  // To make Pace works on Ajax calls
  $(document).ajaxStart(function () {
    Pace.restart();

  })
  
  
  
  $(document).ready(function(){
      
      cek_saldo();    

  })

  $(".t4_saldo").on("click",function(){
      cek_saldo();    
  })

  function cek_saldo()
  {
      $.get("<?php echo base_url()?>index.php/welcome/saldo",function(sal){
        $(".t4_notif_saldo").html(formatRupiah(sal.data.deposit));
        console.log(sal.data.deposit);
    })

  }


function formatRupiah(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}



function notifyMe(notifnya) {
  // Let's check if the browser supports notifications
  if (!("Notification" in window)) {
    alert("This browser does not support desktop notification");
  }

  // Let's check whether notification permissions have already been granted
  else if (Notification.permission === "granted") {
    // If it's okay let's create a notification
    var notification = new Notification(notifnya);
  }

  // Otherwise, we need to ask the user for permission
  else if (Notification.permission !== "denied") {
    Notification.requestPermission().then(function (permission) {
      // If the user accepts, let's create a notification
      if (permission === "granted") {
        var notification = new Notification(notifnya);
      }
    });
  }

  // At last, if the user has denied notifications, and you 
  // want to be respectful there is no need to bother them any more.
}



</script>
</body>
</html>