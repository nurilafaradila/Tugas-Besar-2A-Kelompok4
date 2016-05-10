<?php
error_reporting(0);
$connect = mysql_connect("localhost","root","");
if (!$connect)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("db_akademik", $connect);
?>