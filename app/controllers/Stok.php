<?php

class Stok extends Controller {
    public function __construct() {
        parent::__construct();
        
        if(isset($_SESSION['role']) && $_SESSION['role'] !== 'admin' && $_SESSION['role'] !== 'petugas_stok') { header('Location: ' . BASEURL . '/dashboard'); exit; }
    }

    public function index() {
        $data['judul'] = 'Stok Bahan';
        $data['stok'] = $this->model('Stok_model')->getAllStok();
        
        $this->view('templates/header', $data);
        $this->view('stok/index', $data);
        $this->view('templates/footer');
    }

    public function update() {
        if($this->model('Stok_model')->updateStok($_POST) > 0) {
            $this->model('Log_model')->catatLog("Mencatat pembaruan stok bahan");
            $_SESSION['flash_success'] = 'Berhasil memperbarui stok!';
        } else {
            $_SESSION['flash_error'] = 'Gagal memperbarui stok atau tidak ada perubahan data.';
        }
        header('Location: ' . BASEURL . '/stok');
        exit;
    }
}
