<?php
include "koneksi.php";
$id_jurusan= $_GET['id'];
$sql = mysql_query ("DELETE FROM t_jurusan WHERE id_jurusan='$id_jurusan'") or die ("error");
header("location:show_data_jrsn.php");
?>