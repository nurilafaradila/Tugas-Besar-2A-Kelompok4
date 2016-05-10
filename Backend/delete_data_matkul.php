<?php
include "koneksi.php";
$kode_mata_kuliah= $_GET['id'];
$sql = mysql_query ("DELETE FROM t_mata_kuliah WHERE kode_mata_kuliah='$kode_mata_kuliah'") or die ("error");
header("location:show_data_matkul.php");
?>