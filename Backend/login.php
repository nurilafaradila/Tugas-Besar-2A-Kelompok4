<?php
@session_start();
include "koneksi.php";
error_reporting(0);
if(@$_SESSION['admin'] || @$_SESSION['dosen']){
	header("location: index.php");
	}else{
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body style="background-color: #E2E2E2;">
    <div class="container">
        <div class="row text-center " style="padding-top:100px;">
            <div class="col-md-12">
                <img src="assets/img/polpos.png" />
            </div>
        </div>
         <div class="row ">
               
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                           
                            <div class="panel-body">
                                <form role="form" action="login.php" method="post">
                                    <hr />
                                    <h5>Enter Details to Login</h5>
                                       <br />
                                     <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-tag"  ></i></span>
                                            <input type="text" name="username" class="form-control" placeholder="Your Username " />
                                        </div>
                                            <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock"  ></i></span>
                                            <input type="password" name="password" class="form-control"  placeholder="Your Password" />
                                        </div>
                                    <div class="form-group">
                                                   <span class="pull-right">
                                                   <a href="index.html" >Forget password ? </a> 
                                            </span>
                                        </div>
                                     
                                     <input type="submit" name="login" value="Login" class="btn btn-primary "></a>
                                    <hr />
                                    </form>
									<?php
									
									$username = $_POST['username'];
									$password = md5($_POST['password']);
									$login = $_POST['login'];
									if($login!=""){
										
										if($username == "" || $password == ""){
											?> <script type="text/javascript">alert("Username / Password tidak boleh kosong");</script>
											<?php
										}else{
											$sql = mysql_query("SELECT * FROM t_user WHERE username ='$username' and password = '$password'") or die (mysql_error());
											$data = mysql_fetch_array($sql);
											$cek = mysql_num_rows($sql);
										if($cek >=1){
											
											if($data['level'] == "admin"){
											$_SESSION['username'] = $data['username'];
											$_SESSION['admin'] = $data['id_user'];
											$_SESSION['level'] = $data['level'];
											header("location: index.php");
											} else if($data['level'] == "dosen"){
										    $_SESSION['username'] = $data['username'];
											$_SESSION['dosen'] = $data['id_user'];
											$_SESSION['level'] = $data['level'];
											header("location: index.php");
											
											} else if($data['level'] == "mahasiswa"){
											$_SESSION['username'] = $data['username'];
											$_SESSION['mahasiswa'] = $data['id_user'];
											$_SESSION['level'] = $data['level'];
											header("location: index.php");
											}
											} else {
												echo "Username atau Password yang salah";
											}
										}
									}
									?>
                            </div>
                           
                        </div>
                
                
        </div>
    </div>

</body>
</html>
<?php
	}
?>