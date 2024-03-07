<?php 
include 'koneksi.php';
if (isset($_POST['simpan'])) {
	$jabatan = $_POST['jabatan'];

}

try{
    
    $cekquery = "SELECT * FROM tb_jabatan WHERE jabatan='$jabatan'";
    $resutl = mysqli_query($koneksi, $cekquery);
    
    if($resutl){
        echo "<script>
                var pesan = 'Data jabatan sudah ada, silahkan buat jabatan lain';
                alert(pesan);
                window.location.href = 'datajabatan.php';
            </script>";
    } else {
          $save = "INSERT INTO tb_jabatan SET jabatan='$jabatan'";
        mysqli_query($koneksi, $save);
        
        if ($save) {
        	header("location: datajabatan.php");
        }else{
        	echo "gagal disimpan";
        }
       
    }
    
    
}catch (PDOException $e) {
   echo '<script>alert("Gagal Menambahkan jabatan, karena data sudah ada");</script>';
}



 ?>