<?php
session_start();
include "koneksi.php";

if($_SESSION['admin']!="" || $_SESSION['mahasiswa']!=""){
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
                    <li>
                        <a href="#" class="active-menu-top"><i class="fa fa-desktop "></i>Mahasiswa <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level collapse in">
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
					<?php  if($_SESSION['level']=="admin"){  ?>
                     <li>
                        <a href="#"><i class="fa fa-yelp "></i>Dosen <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="input_data_dosen.php"><i class="fa fa-coffee"></i>Input Data Mahasiswa</a>
                            </li>
                            <li>
                                <a href="show_data_dosen.php"><i class="fa fa-flash "></i>Data Dosen</a>
                            </li>                                                
                        </ul>
                    </li>
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
                        <a href="#"><i class="fa fa-bicycle "></i>Nilai <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
							<?php  if($_SESSION['level']=="admin"){  ?>
                            <li>
                                <a href="input_data_nilai.php"><i class="fa fa-desktop "></i>Input Nilai </a>
                            </li>
							<?php } ?>
                             <li>
                                <a href="show_data_nilai.php"><i class="fa fa-code "></i>Data Nilai</a>
                            </li>                                                       
                        </ul>
                    </li>
					<?php  if($_SESSION['level']=="admin") { ?>
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
						<?php
						include "koneksi.php";
						if($_POST['ubah']!=""){
						
						$nama=$_POST['nama_mhs'];
						$tempat_lahir=$_POST['tempat_lahir'];
						$tanggal_lahir=$_POST['tgl_lahir'];
						$jenis_kelamin=$_POST['jenis_kelamin'];
						$asal=$_POST['asal_mhs'];
						$alamat=$_POST['alamat_mhs'];
						
						$prodi=$_POST['id_prodi'];
						$jurusan=$_POST['id_jurusan'];
					
						$kelas=$_POST['kelas'];
						$angkatan=$_POST['angkatan'];
						$status=$_POST['status'];
						
						
						if($nama ==''){
						$cek[] ="Nama Mahasiswa Harus diisi,";
						}
						if($tempat_lahir ==''){
						$cek[] ="Tempat Lahir Harus diisi,";
						}
						if($tanggal_lahir ==''){
						$cek[] ="Tanggal Lahir Harus diisi,";
						}
						if($jenis_kelamin ==''){
						$cek[] ="Jenis Kelamin Harus diisi,";
						}
						if($asal ==''){
						$cek[] ="Asal Harus diisi,";
						}
						if($alamat ==''){
						$cek[] ="Alamat Harus diisi,";
						}
						if($prodi ==''){
						$cek[] ="ID Prodi Harus diisi,";
						}
						if($jurusan ==''){
						$cek[] ="ID Jurusan Harus diisi,";
						}
						if($kelas ==''){
						$cek[] ="Kelas Harus diisi,";
						}
						if($angkatan ==''){
						$cek[] ="angkatan Harus diisi,";
						}
						if($status ==''){
						$cek[] ="ststus Harus diisi,";
						}
						
						$sql="UPDATE t_mahasiswa set
						
						nama_mhs='$nama',
						tempat_lahir='$tempat_lahir',
						tanggal_lahir='$tanggal_lahir',
						jenis_kelamin='$jenis_kelamin',
						asal_mhs='$asal',
						alamat_mhs='$alamat',
						id_prodi='$prodi',
						id_jurusan='$jurusan',
						kelas='$kelas',
						angkatan='$angkatan',
						status='$status'
						WHERE npm ='$_POST[npm]'";
						
						if(isset($cek)){
						echo"<div id='yellow'><b>Error: </b>" .implode($cek). " </div>";
						}else{
						if(mysql_query($sql)){
						echo"<div id='green'>Mahasiswa Berhasil Diedit </div>";
						}else{
						echo"<div id='red'>Gagal</div>";
						}
						}
						}
						?>
						
						<?php
						$tampil=mysql_query("SELECT * FROM t_mahasiswa where npm='$_GET[id]'");
						$data=mysql_fetch_array($tampil);
						?>

				            <div class="panel-body">
                            <form role="form" action="edit_data_mhs.php" method="POST">
                                        <div class="form-group">
                                            <label>NPM</label>
                                            <input class="form-control" id="disabledInput" type="text" name="id_user" placeholder="<?php echo"$data[npm]";?>" disabled="">
                                        </div>  
										
										<div class="form-group">
                                            <label>Nama Mahasiswa</label>
                                            <input class="form-control" type="text" name="nama_mhs" value="<?php echo"$data[nama_mhs]";?>">
										</div>
										
										<div class="form-group">
                                            <label>Tempat Lahir</label>
                                            <input class="form-control" type="text" name="tempat_lahir" value="<?php echo"$data[tempat_lahir]";?>">
										</div>
										
										<div class="form-group">
                                            <label>Tanggal Lahir</label>
                                            <input class="form-control" type="date" name="tgl_lahir" value="<?php echo"$data[tanggal_lahir]";?>">
										</div>
										
										<div class="form-group">
                                            <label>Jenis Kelamin</label>
                                            <select class="form-control" name="jenis_kelamin">
                                                <?php if($data['jenis_kelamin']!="") {
													if($data['jenis_kelamin']=="Laki-Laki"){
													?>
												<option>--Pilih Jenis Kelamin--</option>
                                                <option selected="selected" value="<?php echo "$data[jenis_kelamin]"; ?>">Laki-Laki</option>
                                                <option value="Perempuan">Perempuan</option>
												  <?php
													}
													else {
													  
												  ?>
												<option>--Pilih Jenis Kelamin--</option>
                                                <option value="Laki-Laki">Laki-Laki</option>
                                                <option selected="selected" value="<?php echo "$data[jenis_kelamin]"; ?>">Perempuan</option>
												<?php
													}
												}
													else if($data['jenis_kelamin']=="") {
												?>
												<option default>--Pilih Jenis Kelamin--</option>
                                                <option value="Laki-Laki">Laki-Laki</option>
                                                <option value="Perempuan">Perempuan</option>
												<?php
												}
												
												?>
                                            </select>
                                        </div>
										
										<div class="form-group">
                                            <label>Asal</label>
                                            <input class="form-control" type="text" name="asal_mhs" value="<?php echo"$data[asal_mhs]";?>">
										</div>
										
                                        <div class="form-group">
                                            <label>Alamat</label>
                                            <textarea class="form-control" rows="3" name="alamat_mhs"><?php echo"$data[alamat_mhs]";?></textarea>
                                        </div>
										
										<div class="form-group">
                                        <?php
                                            echo "<tr><label>Prodi </label>  <td>
											  <select class='form-control' name='id_prodi'>
												<option value=0>- Pilih Prodi -</option>";
												$tampil=mysql_query("SELECT * FROM t_prodi ORDER BY id_prodi");
												while($r=mysql_fetch_array($tampil)){
												  echo "<option selected value='$r[id_prodi]'>$r[prodi]</option>";
												}
										echo "</select></td></tr>";
										?>   
                                        </div>
										
										<div class="form-group">									
										<?php
                                            echo "<tr><label>Jurusan </label>  <td>
											  <select class='form-control' name='id_jurusan'>
												<option value=0>- Pilih Jurusan -</option>";
												$tampil=mysql_query("SELECT * FROM t_jurusan ORDER BY id_jurusan");
												while($r=mysql_fetch_array($tampil)){
											
												echo "<option selected value='$r[id_jurusan]'>$r[jurusan]</option>";
												}
										echo "</select></td></tr>";
										?>   
										</div>
										
										<div class="form-group">
                                            <label>Kelas</label>
                                            <input class="form-control" type="text" name="kelas" value="<?php echo"$data[kelas]";?>">
										</div>
										
										<div class="form-group">
                                            <label>Angkatan</label>
                                            <input class="form-control" type="text" name="angkatan" value="<?php echo"$data[angkatan]";?>">
										</div>
										
										<div class="form-group">
                                            <label>Status</label>
                                            <select class="form-control" name="status">
                                                 <?php if($data['status']!="") {
													if($data['status']=="Aktif"){
													?>
												<option>--Pilih Status--</option>
                                                <option selected="selected" value="<?php echo "$data[status]"; ?>">Aktif</option>
                                                <option value="Tidak Aktif">Tidak Aktif</option>
												  <?php
													}
													else {

												  ?>
												<option>--Pilih Status--</option>
                                                <option value="Aktif">Aktif</option>
                                                <option selected="selected" value="<?php echo "$data[status]"; ?>">Tidak Aktif</option>
												<?php
													}
												}
													else if($data['status']=="") {
												?>
												<option default>--Pilih Status--</option>
                                                <option value="Aktif">Aktif</option>
                                                <option value="Tidak Aktif">Tidak Aktif</option>
												<?php
												}
												
												?>
			                                </select>
										</div>
                                 
                                        <button type="submit" name="ubah" value="Ubah" class="btn btn-info">Ubah </button>					
										<button type="reset" class="btn btn-danger">Reset</button>
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