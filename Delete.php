<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil nilai ID pengguna
    $user_id = $_POST['user_id'];

    // Koneksi ke database
    $host = "localhost";
    $user = "username";
    $password = "password";
    $database = "tb_absen_pulang";
    $conn = new mysqli($host, $user, $password, $database);

    // Query untuk menghapus data pengguna
    $query = "DELETE FROM user WHERE user_id = $user_id";
    
    if ($conn->query($query) === TRUE) {
        echo "Data pengguna berhasil dihapus!";
    } else {
        echo "Error: " . $query . "<br>" . $conn->error;
    }

    // Tutup koneksi
    $conn->close();
}
?>