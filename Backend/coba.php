
<?php

mysql_connect("localhost","root","");
mysql_select_db("db_akademik");
$result = mysql_query("SELECT * from t_orangtua_mhs a left join t_nilai b on a.npm=b.npm");
$jsArray = "var kirim = new Array();\n";
?>
<table>
<tr>
	<td>Kode Siswa <td>:<td>
    <select name="kode" onchange="changeValue(this.value)">
   		<option selected="selected">-------</option>
<?php
	
		while ($row = mysql_fetch_array($result)) {
    	echo '<option value="' . $row['no_hp'] . '">' . $row['no_hp'] .' - '. $row['npm'] . '</option>';
    	$jsArray .= "kirim['" . $row['no_hp'] . "'] = {satu:'" . addslashes($row['IPK']). "'};\n";
}
?>
</select>
	</td>
</tr>
<tr>
<td>
Nama<td>  :<td> <input type="text" name="IPK"  id="IPK" value=""/>
</tr>
</table>
<script type="text/javascript">
<?php echo $jsArray; ?>
function changeValue(id){
document.getElementById('IPK').value = kirim[id].satu;
};
</script>
