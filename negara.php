<?php 
require_once "koneksi.php";
$benua_id  = $_POST['benua_id'];
$sql_negara = mysqli_query($con, "select * from negara where benua_id = $benua_id");
echo '<option>Pilih Negara</option>';
while($row_negara = mysqli_fetch_array($sql_negara)){
echo '<option value="'.$row_negara['id'].'">'.$row_negara['nama_negara'].'</option>';
}
 ?>