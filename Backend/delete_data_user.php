<?php
include "koneksi.php";
$id_user = $_GET['id'];
$sql = mysql_query ("DELETE FROM t_user WHERE id_user ='$id_user'")or die ("error");
header("location:show_data_user.php");
?>