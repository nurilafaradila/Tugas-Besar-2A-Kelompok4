<?php
include "koneksi.php";
$id_prodi= $_GET['id'];
$sql = mysql_query ("DELETE FROM t_prodi WHERE id_prodi='$id_prodi'") or die ("error");
header("location:show_data_prodi.php");
?>