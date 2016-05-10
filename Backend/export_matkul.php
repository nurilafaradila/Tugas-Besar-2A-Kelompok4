 <?php

 require 'Classes/PHPExcel.php';
 require_once 'Classes/PHPExcel/IOFactory.php';
 include "koneksi.php";
// Create new PHPExcel object
$objPHPExcel = new PHPExcel();
$objPHPExcel->getProperties()->setCreator("RN Kushwaha")
        ->setLastModifiedBy("Aryan")
        ->setTitle("Reports")
        ->setSubject("Excel Turorials")
        ->setDescription("Test document ")
        ->setKeywords("phpExcel")
        ->setCategory("Test file");
        
// Create a first sheet, representing sales data
$objPHPExcel->setActiveSheetIndex(0);
$objPHPExcel->getActiveSheet()->setCellValue('A1', 'Kode Mata Kuliah');
$objPHPExcel->getActiveSheet()->setCellValue('B1', 'ID Prodi');
$objPHPExcel->getActiveSheet()->setCellValue('C1', 'ID Jurusan');
$objPHPExcel->getActiveSheet()->setCellValue('D1', 'Mata Kuliah');
$objPHPExcel->getActiveSheet()->setCellValue('E1', 'Semester');
$objPHPExcel->getActiveSheet()->setCellValue('F1', 'SKS');

$n=2;
$qry= mysql_query("select * from t_mata_kuliah ");
while($d= mysql_fetch_array($qry)){
 $objPHPExcel->getActiveSheet()->setCellValue('A'.$n, $d['kode_mata_kuliah']);
 $objPHPExcel->getActiveSheet()->setCellValue('B'.$n, $d['id_prodi']);
 $objPHPExcel->getActiveSheet()->setCellValue('C'.$n, $d['id_jurusan']);
 $objPHPExcel->getActiveSheet()->setCellValue('D'.$n, $d['nama_mata_kuliah']);
 $objPHPExcel->getActiveSheet()->setCellValue('E'.$n, $d['semester']);
 $objPHPExcel->getActiveSheet()->setCellValue('F'.$n, $d['sks']);
   $n++;
}                
                
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('Matakuliah');

// Create a new worksheet, after the default sheet
$objPHPExcel->createSheet();

// Add some data to the second sheet, resembling some different data types


// Redirect output to a client’s web browser (Excel5)
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
ob_end_clean();
header('Content-Type: application/vnd.ms-excel; charset=UTF-8');
header('Content-Disposition: attachment;filename="DataMatkul.xls"');
header('Cache-Control: max-age=0');
$objWriter->save('php://output');

 ?>