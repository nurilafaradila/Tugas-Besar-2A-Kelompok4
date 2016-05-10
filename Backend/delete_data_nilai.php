<?php
include "koneksi.php";
$id_nilai = $_GET['id'];
$sql = mysql_query ("DELETE FROM t_nilai WHERE id_nilai ='$id_nilai'")or die("error");
header("location:show_data_nilai.php");
?>