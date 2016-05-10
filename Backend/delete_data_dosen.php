<?php
include "koneksi.php";
$nip = $_GET['id'];
$sql = mysql_query ("DELETE FROM t_dosen WHERE nip ='$nip'")or die ("error");
header("location:show_data_dosen.php");
?>