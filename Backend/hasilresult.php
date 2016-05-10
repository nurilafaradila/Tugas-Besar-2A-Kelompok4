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
                                <a href="show_view_nilai.php"><i class="fa fa-code "></i>View Nilai</a>
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
					<?php } ?>
					<?php  if($_SESSION['level']=="admin"){  ?>
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
                        <h1 class="page-head-line">Data Table</h1>
                        <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                    </div>
                </div>
                <!-- /. ROW  -->
				
              
							<?php
									include "koneksi.php";
									
									if($_POST['semester']=="all"){
										
									
									$tampil=mysql_query("SELECT * FROM t_mahasiswa WHERE npm='$_POST[npm]' ");
									$data=mysql_fetch_array($tampil);
									}
									else {
									$tampil=mysql_query("SELECT * FROM t_nilai WHERE npm='$_POST[npm]' and semester='$_POST[semester]'");
									$data=mysql_fetch_array($tampil);	
									}
									
									?>
                           
                            <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
									 <?php
									 
										if($_POST['semester']!="all"){
									 ?>
										<tr>
                                        <td>ID Nilai</td>
										<td>: <?php echo"$data[id_nilai]";?></td>
										</tr>
										 <?php
										}
										
									 ?>
										<tr>
                                        <td>NPM</td>
										<td>: <?php echo"$data[npm]";?></td>
										</tr>
										<?php
									 
										if($_POST['semester']!="all"){
									 ?>
										<tr>
										
                                        <td>Semester</td>
										<td>: <?php echo"$data[semester]";?></td>
										</tr>
										 <?php
									 
										}
										
									 ?>
										<?php
									 
										if($_POST['semester']!="all"){
									 ?>
										<tr>
                                        <td>IPS</td>
										<td>: <?php echo"$data[IPK]";?></td>
										</tr>
											 <?php
									 
										}
										else {
											?>
												<?php
									include "koneksi.php";
									
									$tampil=mysql_query("SELECT * from t_nilai where npm='$_POST[npm]'");
									
									while ($r=mysql_fetch_array($tampil)){
										$hasil=mysql_query("SELECT * from t_detail_nilai where id_nilai='$r[id_nilai]'");
										while ($d=mysql_fetch_array($hasil)){
											$hasil2=mysql_query("SELECT * from t_mata_kuliah where kode_mata_kuliah='$d[kode_mata_kuliah]'");
											while ($c=mysql_fetch_array($hasil2)){
												$sks=$c['sks'];
												$totalsks=$sks+$totalsks;
												if($d[nilai]=="A"){
													$total=4*$sks;
												}
												else if($d[nilai]=="B"){
													$total=3*$sks;
												}
												else if($d[nilai]=="C"){
													$total=2*$sks;
												}
												else if($d[nilai]=="D"){
													$total=1*$sks;
												}
												else if($d[nilai]=="E"){
													$total=0*$sks;
												}
												$totalmutu=$total+$totalmutu;
												$ipk=$totalmutu/$totalsks;
											}
											
										}
										
										}
									 ?>
									 <tr>
                                        <td>IPK</td>
										<td>: <?php echo round("$ipk",2);?></td>
										</tr>
											 <?php
									}
									?>
									 
                                    </thead>                             
                                </table>
								Detail
                            </div>
							 <div class="table-responsive">
							 <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Kode Matakuliah</th>
											<th>Nama Matakuliah</th>
                                            <th>Nilai</th>
											
                                        </tr>
                                    </thead>
									<?php
									include "koneksi.php";
									if($_POST['semester']!="all"){
										$tampil=mysql_query("SELECT a.kode_mata_kuliah,a.nilai,b.nama_mata_kuliah FROM t_detail_nilai a LEFT JOIN t_mata_kuliah b 
										on a.kode_mata_kuliah = b.kode_mata_kuliah where a.id_nilai='$data[id_nilai]'");
									}
									else {
										
									
									$tampil=mysql_query("SELECT a.kode_mata_kuliah,a.nilai,b.nama_mata_kuliah FROM t_detail_nilai a LEFT JOIN t_mata_kuliah b on a.kode_mata_kuliah = b.kode_mata_kuliah LefT JOIN t_nilai c on a.id_nilai=c.id_nilai  where c.npm='$_POST[npm]'");
									}
									while ($r=mysql_fetch_array($tampil)){
										echo "<tr>
										
										
                                        <th>$r[kode_mata_kuliah]</th>
										<th>$r[nama_mata_kuliah]</th>
                                        <th>$r[nilai]</th>
                                        
										</tr>";								
									}
									?>                           
                                </table>
								<input type="button" value="Kembali" onclick="history.back(-1)" class="btn btn-danger">
							 </div>
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