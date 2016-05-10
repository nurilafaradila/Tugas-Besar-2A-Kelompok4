<?php
include "koneksi.php";
$npm = $_GET['id'];
$sql = mysql_query ("DELETE FROM t_mahasiswa WHERE npm ='$npm'")or die ("error");
header("location:show_data_mhs.php");
?>