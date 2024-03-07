<?php 
$koneksi = mysqli_connect("localhost", "root", "", "ujikom_ihsan");

if (mysqli_connect_errno()) {
	echo "koneksi gagal " . mysql_connect_error();
}
 ?>