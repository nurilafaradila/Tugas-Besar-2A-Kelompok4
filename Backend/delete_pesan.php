<?php
include "koneksi.php";
$ID = $_GET['id'];
$sql = mysql_query ("DELETE FROM inbox WHERE ID ='$ID'")or die ("error");
header("location:lihat_pesan.php");
?>