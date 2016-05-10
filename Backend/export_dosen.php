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
$objPHPExcel->getActiveSheet()->setCellValue('A1', 'NIP');
$objPHPExcel->getActiveSheet()->setCellValue('B1', 'Nama Dosen');
$objPHPExcel->getActiveSheet()->setCellValue('C1', 'Alamat Dosen');


$n=2;
$qry= mysql_query("select * from t_dosen ");
while($d= mysql_fetch_array($qry)){
 $objPHPExcel->getActiveSheet()->setCellValue('A'.$n, $d['nip']);
 $objPHPExcel->getActiveSheet()->setCellValue('B'.$n, $d['nama_dosen']);
 $objPHPExcel->getActiveSheet()->setCellValue('C'.$n, $d['alamat_dosen']);

   $n++;
}                
                
// Rename sheet
$objPHPExcel->getActiveSheet()->setTitle('Dosen');

// Create a new worksheet, after the default sheet
$objPHPExcel->createSheet();

// Add some data to the second sheet, resembling some different data types


// Redirect output to a client’s web browser (Excel5)
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
ob_end_clean();
header('Content-Type: application/vnd.ms-excel; charset=UTF-8');
header('Content-Disposition: attachment;filename="DataDosen.xls"');
header('Cache-Control: max-age=0');
$objWriter->save('php://output');

 ?>