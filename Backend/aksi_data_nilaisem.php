<?php
include "koneksi.php";
$grade=$_POST['kode_mata_kuliah'];
mysql_query("INSERT INTO t_nilai values('$_POST[id_nilai]','$_POST[id_prodi]','$_POST[id_jurusan]','$_POST[npm]','$_POST[semester]','')") or die(mysql_error());
$i=0;
foreach($_POST['nilai'] as $interest) {
	$hasil=mysql_query("select * from t_mata_kuliah where kode_mata_kuliah='$grade[$i]'");
	$result=mysql_fetch_array($hasil);
	$sks=$result['sks'];
	$totalsks=$sks+$totalsks;
	if($interest=="A"){
		$total=4*$sks;
	}
	else if($interest=="B"){
		$total=3*$sks;
	}
	else if($interest=="C"){
		$total=2*$sks;
	}
	else if($interest=="D"){
		$total=1*$sks;
	}
	else if($interest=="E"){
		$total=0*$sks;
	}
	$totalmutu=$total+$totalmutu;
	$ipk=$totalmutu/$totalsks;
	$sql=mysql_query("INSERT INTO t_detail_nilai(id_nilai,kode_mata_kuliah,nilai)
						VALUES
						('$_POST[id_nilai]','$grade[$i]','$interest')") or die(mysql_error());
    $i++;
}
mysql_query("update t_nilai set ipk='$ipk' where id_nilai='$_POST[id_nilai]'");
header("location:show_data_nilai.php");
						

?>