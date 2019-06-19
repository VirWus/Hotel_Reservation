<?php
session_start();
if(isset($_SESSION["email"]) && !empty($_SESSION["email"]) && isset($_SESSION["pass"]) && !empty($_SESSION["pass"]) ){

}else {
  header("Location:../admin/index.php");
}
?>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin - Fondoki</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" href="../img/favicopn.png">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">

    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>

    <!-- <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">
    <style type="text/css">
      .table-style .today {background: #2A3F54; color: #ffffff;}
.table-style th:nth-of-type(7),td:nth-of-type(7) {color: blue;}
.table-style th:nth-of-type(1),td:nth-of-type(1) {color: red;}
.table-style tr:first-child th{background-color:#F6F6F6; text-align:center; font-size: 15px;}

    </style>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
<script type="text/javascript" src="../assets/asset/js/checkBoxFunction.js"></script>
</head>
<body>

    <?php
   include_once("connect/connection.php");
    $article = mysqli_query($connect,"SELECT * FROM hotels");
    $article1 = mysqli_query($connect,"SELECT * FROM hotels");
    ?>
        <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./"><img src="images/logo.png" alt="Logo"></a>
                <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
            </div>

        
            <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">


<h3 class="menu-title">Fondoki</h3><!-- /.menu-title -->


<li>
  <a href="reservation.php"> <i class="menu-icon fa fa-pencil" ></i>Reservation </a>
</li>
<li>
  <a href="hotel.php"> <i class="menu-icon fa fa-pencil-square-o" style="color:#e74c3c;"></i>Hotels </a>
</li>

<li><hr style="border: 0.03em solid #e74c3c;" ></li>


</ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>

                        <div class="dropdown for-notification">

                        </div>

                        <div class="dropdown for-message">



                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                  
                    </div>

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            <i class="flag-icon flag-icon-us"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language" >
                            <div class="dropdown-item">
                                <span class="flag-icon flag-icon-fr"></span>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-es"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-us"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-it"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
      <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Dashboard</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li><a href="">Dashboard</a></li>
                            <li><a href="">Admin</a></li>
                            <li class="active">Hotel</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

<div class="content mt-3">

            <div class="animated fadeIn">
                  <div class="row">

                   <div class="col-lg-6">
                    <div class="card">
                      <div class="card-header">Ajouter votre Hotel</div>
                      <div class="card-body card-block">
                        <form action="../add-article.php" method="POST" enctype="multipart/form-data" >
                          <div class="form-group">
                            <p> Nom :</p>
                            <div class="input-group">
                              <input type="text" id="name" name="name" placeholder="Name" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                              <div class="form-group">
                            <p> Strars :</p>
                            <div class="input-group">
                              <input type="text" id="stars" name="stars" placeholder="Stars" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                              <div class="form-group">
                            <p> Price :</p>
                            <div class="input-group">
                              <input type="text" id="price" name="price" placeholder="Price" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                              <div class="form-group">
                            <p> City Name :</p>
                            <div class="input-group">
                              <input type="text" id="CityName" name="CityName" placeholder="City Name" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                              <div class="form-group">
                            <p> Adress :</p>
                            <div class="input-group">
                              <input type="text" id="adress" name="adress" placeholder="Adress" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                                <div class="form-group">
                            <p> Latitude :</p>
                            <div class="input-group">
                              <input type="text" id="lat" name="lat" placeholder="Latitude" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                                <div class="form-group">
                            <p> lengitude :</p>
                            <div class="input-group">
                              <input type="text" id="len" name="len" placeholder="lengitude" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                                   <div class="form-group">
                            <p> lengitude :</p>
                            <div class="input-group">
                              <input type="text" id="trapurl" name="trapurl" placeholder="Trap Url" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-user"></i></div>
                            </div>
                          </div>
                          <div class="form-group">
                            <p> CheckIn :</p>
                            <div class="input-group">
                              <input type="date" id="checkin" name="checkin" placeholder="CheckIN" class="form-control">
                                  <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                            </div>
                          </div>

                          <div class="form-group">
                            <p> Déscription :  :</p>
                            <div class="input-group ">
                              <input type="text" id="descr" name="descr" placeholder="déscription" class="form-control">
                              <div class="input-group-addon"><i class="fa fa-file"></i></div>
                             </div>
                          </div>
            
       <div style=" margin: 30px 0px;" class="row form-group">
            <h4>files</h4>
            <div class="input-group">
                <label style="margin: 0;" class="input-group-btn">
                    <span class="btn btn-primary">
                        Browse&hellip; <input  name="fileto" class="form-control-file" type="file" style="display: none;" multiple>
                    </span>
                </label>
                <input type="text" class="form-control" readonly>
            </div>
        </div>    

                          <div  class="form-actions form-group"><button  type="submit" class="btn btn-primary btn-block">Ajouter</button></div>
                        </form>
                      </div>
                    </div>
                  </div>
   <!-- /#right-panel -->
 
    <div class="content mt-3">

            <div class="animated fadeIn">
                <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Table des Hotels</strong>
                        </div>
                        <div class="card-body">
                  <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Nom</th>
                        <th>Stars</th>
                         <th>Price</th>
                        <th>Adress</th>
                        <th>déscription</th>
                        <th>Check In</th>
                        <th>Lien</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                     <?php $i=1 ;
                      while ($row = mysqli_fetch_assoc($article)){ ?>
                      


                      <tr>
                        <td><?php   echo $i++;  ?></td>
                        <td><?php echo $row["name"] ; ?></td>
                        <td><?php  echo $row["stars"] ;   ?></td>
                        <td><?php  echo $row["price"] ;   ?></td>
                        <td><?php  echo $row["adress"] ;   ?></td>
                        <td><?php   echo substr($row["descr"],0,30)."..."; ;  ?></td>
                        <td><?php  echo $row["checkin"] ;   ?></td>
                        <td><?php   echo substr($row["photo"],0,30)."..." ;  ?></td>
                        <td> <a href="Edit_hotel.php?id=<?php echo $row["id"];?>"><button type="button" class="btn btn-outline-success fa fa-wrench btn-lg"></button></a>
                            <a href="hotel(delete).php?id=<?php echo $row["id"];?>"><button type="button" class="btn btn-outline-danger fa fa-trash btn-lg"></button> </a>
                         <button type="button" class="btn btn-outline-warning fa fa-eye btn-lg" data-toggle="modal" data-target="#basicExampleModal<?php echo $row["id"];?>"></button>
                        </td>


                      </tr>



                     
                      <?php  }
                   ?>

                    </tbody>
                  </table>
                        </div>
                    </div>
                </div>


                </div>


            </div><!-- .animated -->

      </div> <!-- .content -->
  </div>

</div><!-- Right Panel -->

<?php
                      while ($row = mysqli_fetch_assoc($article1)){ ?>
<!-- Modal -->
<div class="modal fade" id="basicExampleModal<?php echo $row["id"];?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="row">
          <div class="col-lg-5">
            <!--Carousel Wrapper-->
            <div id="carousel-thumb" class="carousel slide carousel-fade carousel-thumbnails" data-ride="carousel">
                <!--Slides-->
                 <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="<?php   echo $row['photo'];  ?>" alt="First slide">
                    </div>
                 </div>
                <!--/.Slides-->
                <!--Controls-->
                <a class="carousel-control-prev" href="#carousel-thumb" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carousel-thumb" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
                <!--/.Controls-->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-thumb" data-slide-to="2"><img class="d-block" src="<?php   echo $row['photo'];  ?>" class="img-fluid"></li>
                </ol>
            </div>
            <!--/.Carousel Wrapper-->
          </div>
          <div class="col-lg-7">
            <h2 class="h2-responsive product-name">
              <strong><?php   echo $row['name'];  ?></strong>
            </h2>
            <h4 class="h4-responsive">
              <span class="green-text">
                <strong><?php   echo $row['price'];  ?> DZD</strong>
              </span>
              <span class="grey-text">
                <small>
                  <s></s>
                </small>
              </span>
            </h4>
               <h4 class="h4-responsive">
              <span class="green-text">
                <strong><?php   echo $row['stars'];  ?> Stars</strong>
              </span>
              <span class="grey-text">
                <small>
                  <s></s>
                </small>
              </span>
            </h4>


            <!--Accordion wrapper-->
            <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">

                <!-- Accordion card -->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header" role="tab" id="headingOne">
                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            <h5 class="mb-0">
                                Description <i class="fa fa-angle-down rotate-icon"></i>
                            </h5>
                        </a>
                    </div>

                    <!-- Card body -->
                    <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" >
                        <div class="card-body">
                           <?php   echo $row['descr'];  ?>
                        </div>
                    </div>
                </div>
                <!-- Accordion card -->

                <!-- Accordion card -->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header" role="tab" id="headingTwo">
                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            <h5 class="mb-0">
                                Details <i class="fa fa-angle-down rotate-icon"></i>
                            </h5>
                        </a>
                    </div>

                    <!-- Card body -->
                    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion" >
                        <div class="card-body">
                            <?php   echo $row['adress'];  ?>
                        </div>
                    </div>
                </div>
                <!-- Accordion card -->

                <!-- Accordion card -->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header" role="tab" id="headingThree">
                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            <h5 class="mb-0">
                                Check In <i class="fa fa-angle-down rotate-icon"></i>
                            </h5>
                        </a>
                    </div>

                    <!-- Card body -->
                    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                        <div class="card-body">
                            <div class=" col-md-12 col-sm-12" style="border:0px solid">
  
    <div class="col-md-12" style="padding:0px;">
      <br>
        <table class="table table-style table-responsive">
          <tr>
            <th colspan="2"><a href="#?ym=<?php echo $prev; ?>"><span class="fa fa-chevron-left"></span></a></th>
            <th colspan="3"> Sep - 2018</th>
            <th colspan="2"><a href="#?ym=<?php echo $next; ?>"><span class="fa fa-chevron-right"></span></a></th>
          </tr>
          <tr>
            <th>S</th>
            <th>M</th>
            <th>T</th>
            <th>W</th>
            <th>T</th>
            <th>F</th>
            <th>S</th>
          </tr>
          <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
          </tr>
          <tr>
            <td>8</td>
            <td>9</td>
            <td>10</td>
            <td>11</td>
            <td class="today">12</td>
            <td>13</td>
            <td>14</td>
          </tr>
          <tr>
            <td>15</td>
            <td>16</td>
            <td>17</td>
            <td>18</td>
            <td>19</td>
            <td>20</td>
            <td>21</td>
          </tr>
           <tr>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>25</td>
            <td>26</td>
            <td>27</td>
            <td>28</td>
          </tr>
            <tr>
            <td>29</td>
            <td>30</td>
            <td>31</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          
          </table>

    </div>
  </div>

                        </div>
                    </div>
                </div>
                <!-- Accordion card -->
            </div>
            <!--/.Accordion wrapper-->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Modal: modalQuickView -->
   <?php  }
                   ?>


</body>
<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


    <script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/pdfmake.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="assets/js/lib/data-table/datatables-init.js"></script>
<script type="text/javascript">
  $(function() {

  // We can attach the `fileselect` event to all file inputs on the page
  $(document).on('change', ':file', function() {
    var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [numFiles, label]);
  });

  // We can watch for our custom `fileselect` event like this
  $(document).ready( function() {
      $(':file').on('fileselect', function(event, numFiles, label) {

          var input = $(this).parents('.input-group').find(':text'),
              log = numFiles > 1 ? numFiles + ' files selected' : label;

          if( input.length ) {
              input.val(log);
          } else {
              if( log ) alert(log);
          }

      });
  });
  
});

</script>

    <script type="text/javascript">

      $('#bootstrap-data-table-export').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
        }
    </script>
</html>
