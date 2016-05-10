<?php
session_start();
include "koneksi.php";

if($_SESSION['admin']!="" || $_SESSION['dosen']!="" || $_SESSION['mahasiswa']!=""){
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Bootstrap Advance Admin Template</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">COMPANY NAME</a>
            </div>

            <div class="header-right">
                <a href="logout.php" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.png" class="img-thumbnail" />

                            <div class="inner-text">
                                Jhon Deo Alex
                            <br />
                                <small>Last Login : 2 Weeks Ago </small>
                            </div>
                        </div>

                    </li>


                    <li>
                        <a href="index.php"><i class="fa fa-dashboard "></i>Home</a>
                    </li>
					<?php if($_SESSION['admin']!="" || $_SESSION['mahasiswa']!=""){?>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Mahasiswa <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
							<?php  if($_SESSION['level']=="admin"){  ?>
                            <li>
                                <a href="input_data_mhs.php"><i class="fa fa-edit"></i>Input Data Mahasiswa</a>
                            </li>
							<?php } ?>
                            <li>
                                <a href="show_data_mhs.php"><i class="fa fa-bell "></i>Data Mahasiswa</a>
                            </li>
							<?php  if($_SESSION['level']=="admin"){  ?>
                            <li>
                                <a href="input_data_ortu.php"><i class="fa fa-edit"></i>Input Data Orangtua</a>
                            </li>
							<?php } ?>
							<?php  if($_SESSION['level']=="admin"){  ?>
                            <li>
                                <a href="show_data_ortu.php"><i class="fa fa-bell "></i>Data Orangtua Mahasiswa</a>
                            </li>
                            <?php } ?>                                                                           
                        </ul>
                    </li>
					<?php } ?>
					<?php if($_SESSION['admin']!="" || $_SESSION['dosen']!=""){?>
                    <li>
                        <a href="#"><i class="fa fa-yelp "></i>Dosen <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
						 <?php  if($_SESSION['level']=="admin"){  ?>
                            <li>
                                <a href="input_data_dosen.php"><i class="fa fa-coffee"></i>Input Data Mahasiswa</a>
                            </li>
						 <?php } ?>
                            <li>
                                <a href="show_data_dosen.php"><i class="fa fa-flash "></i>Data Dosen</a>
                            </li>                                                
                        </ul>
                    </li>
					<?php } ?>
					<?php  if($_SESSION['level']=="admin"){  ?>
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i>Mata Kuliah <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="input_data_matkul.php"><i class="fa fa-desktop "></i>Input Mata Kuliah </a>
                            </li>
                             <li>
                                <a href="show_data_matkul.php"><i class="fa fa-code "></i>Data Mata Kuliah</a>
                            </li>                                                       
                        </ul>
                    </li>
					<?php } ?>
					<?php  if($_SESSION['level']=="admin"){  ?>
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i>Prodi<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="input_data_prodi.php"><i class="fa fa-desktop "></i>Input Prodi </a>
                            </li>
                             <li>
                                <a href="show_data_prodi.php"><i class="fa fa-code "></i>Data Prodi</a>
                            </li>                                                       
                        </ul>
                    </li>
					<?php } ?>
					<?php  if($_SESSION['level']=="admin"){  ?>
					<li>
                        <a href="#"><i class="fa fa-bicycle "></i>Jurusan <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                           
                             <li>
                                <a href="input_data_jrsn.php"><i class="fa fa-desktop "></i>Input Jurusan </a>
                            </li>
                             <li>
                                <a href="show_data_jrsn.php"><i class="fa fa-code "></i>Data Jurusan</a>
                            </li>                                                       
                        </ul>
                    </li>
					<?php } ?>
					<li>
                        <a href="#" class="active-menu-top"><i class="fa fa-bicycle "></i>Nilai <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level collapse in">
                           <?php  if($_SESSION['level']=="admin" || $_SESSION['level']=="dosen"){  ?>
                             <li>
                                <a href="input_data_nilai.php"><i class="fa fa-desktop "></i>Input Nilai </a>
                            </li>					
                             <li>
                                <a href="show_data_nilai.php"><i class="fa fa-code "></i>Data Nilai</a>
                            </li>  
							<?php } ?>
							<li>
                                <a href="show_view_nilai.php" class="active-menu"><i class="fa fa-code "></i>View Nilai</a>
                            </li> 	
                        </ul>
                    </li>
					
					<?php  if($_SESSION['level']=="admin"){  ?>
					<li>
                    <a href="#"><i class="fa fa-yelp "></i>User <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="input_data_user.php"><i class="fa fa-coffee"></i>Input Data User</a>
                            </li>
                            <li>
                                <a href="show_data_user.php"><i class="fa fa-flash "></i>Data User</a>
                            </li>                                                                          
                        </ul>
                    </li>
                    <li>
                        <a href="#.php"><i class="fa fa-anchor "></i>SMS<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                           
                             <li>
                                <a href="kirim_nilai.php"><i class="fa fa-desktop "></i>Kirim Nilai </a>
                            </li>
                             <li>
                                <a href="lihat_pesan.php"><i class="fa fa-code "></i>Lihat Pesan </a>
                            </li>                                                       
                        </ul>
                    </li>
					<?php } ?>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Basic Forms</h1>
                        <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12">
               <div class="panel panel-info">
                        <div class="panel-heading">
                           BASIC FORM
                        </div>
						
				             <div class="panel-body">
                            <form role="form" action="hasilresult.php" method="POST">
										<div class="form-group">
										<?php
										
                                            echo "<tr><label>NPM </label>  <td>
											  <select class='form-control' name='npm'>
												<option value=0 >- Pilih NPM -</option>";
												if($_SESSION['level']=="mahasiswa"){
													$tampil=mysql_query("SELECT * FROM t_mahasiswa where npm='$_SESSION[username]' ORDER BY npm");
												}
												else{
													$tampil=mysql_query("SELECT * FROM t_mahasiswa ORDER BY npm");
												}
												
												while($r=mysql_fetch_array($tampil)){
												  echo "<option value=$r[npm] >$r[npm]-$r[nama_mhs]</option>";
												}
										echo "</select></td></tr>";
										?>
                                        </div>
										
										
                                         <?php
                                            echo "<tr><label>Semester</label>  <td>";  
										?>
										<select class='form-control' name='semester'>
												<option value=0 selected>- Pilih Semester -</option>
												<option value="1" >Semester 1</option>
												<option value="2" >Semester 2</option>
												<option value="3" >Semester 3</option>
												<option value="4" >Semester 4</option>
												<option value="5" >Semester 5</option>
												<option value="6" >Semester 6</option>
												<option value="7" >Semester 7</option>
												<option value="8" >Semester 8</option>
												
												<option value="all" >ALL</option>
												
											</select></td></tr>
										</div>
											
										
                                        <button type="submit" name="submit" value="Simpan" class="btn btn-info">Search</button>
										
								

                                    </form>
                            </div>
                     </div>
					 </div>
            
                                               
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <div id="footer-sec">
        &copy; 2014 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">BinaryTheme.com</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>


</body>
</html>

<?php
	}else{
		header("location: login.php");
	}
?>