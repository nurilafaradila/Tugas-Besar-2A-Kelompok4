<?php
include "koneksi.php";
$q = $_GET['q'];
$tampil=mysql_query("SELECT * from t_nilai where npm='$_GET[c]' and semester='$q'");					
$r=mysql_fetch_array($tampil);
echo "Nilai IPK Semester ".$q." Untuk Anak Anda Dengan NPM ".$_GET['c']." Adalah ".round($r['IPK'],2);
?>
