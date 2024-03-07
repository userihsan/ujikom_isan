<?php
include '../koneksi.php';
$date = date("Y-m-d");
$id_karyawan = $_POST['id_karyawan'];
$nama = $_POST['nama'];
$waktu = $_POST['waktu'];
$id = $_POST['id'];

if (isset($_POST['simpan'])) {

	if($_POST['is_clock_in'] == "clock_in"){
		$save = "INSERT INTO tb_absen_karyawan SET id_karyawan='$id_karyawan', waktu='$date', nama='$nama', absen_masuk='$waktu'";
		mysqli_query($koneksi, $save);
	
		if ($save) {
			echo "<script>alert('Anda sudah absen untuk hari ini') </script>";
			echo "<script>window.location.href = \"index.php?m=awal\" </script>";	
		}
	} else if($_POST['is_clock_in'] == "clock_out"){
		$save = "UPDATE tb_absen_karyawan SET nama='$nama', absen_keluar='$waktu' WHERE id='$id'";
		mysqli_query($koneksi, $save);

		if ($save) {
			echo "<script>alert('Anda sudah absen keluar untuk hari ini') </script>";
			echo "<script>window.location.href = \"index.php?m=awal\" </script>";	
		}
	}
	

	

}



 ?>