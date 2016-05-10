<?php
include "koneksi.php";
$id_orangtua = $_GET['id'];
$sql = mysql_query ("DELETE FROM t_orangtua_mhs WHERE id_orangtua ='$id_orangtua'")or die ("error");
header("location:show_data_ortu.php");
?>