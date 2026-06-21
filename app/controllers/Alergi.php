<?php

class Alergi extends Controller {
    public function __construct() {
        parent::__construct();
        
        if(isset($_SESSION['role']) && $_SESSION['role'] !== 'admin') { header('Location: ' . BASEURL . '/dashboard'); exit; }
    }

    public function index() {
        $data['judul'] = 'Master Alergi';
        $data['alergi'] = $this->model('Alergi_model')->getAllAlergi();
        
        $this->view('templates/header', $data);
        $this->view('alergi/index', $data);
        $this->view('templates/footer');
    }

    public function tambah() {
        $this->verifyCsrfToken(isset($_POST['csrf_token']) ? $_POST['csrf_token'] : '');
        if($this->model('Alergi_model')->tambahDataAlergi($_POST) > 0) {
            $this->model('Log_model')->catatLog("Menambahkan master alergi baru: " . $_POST['nama_alergi']);
            header('Location: ' . BASEURL . '/alergi');
            exit;
        } else {
            header('Location: ' . BASEURL . '/alergi');
            exit;
        }
    }

    public function hapus($id) {
        if($this->model('Alergi_model')->hapusDataAlergi($id) > 0) {
            $this->model('Log_model')->catatLog("Menghapus master alergi ID: " . $id);
            header('Location: ' . BASEURL . '/alergi');
            exit;
        } else {
            header('Location: ' . BASEURL . '/alergi');
            exit;
        }
    }

    public function ubah() {
        if($this->model('Alergi_model')->ubahDataAlergi($_POST) > 0) {
            $this->model('Log_model')->catatLog("Mengubah master alergi ID: " . $_POST['id_alergi']);
            header('Location: ' . BASEURL . '/alergi');
            exit;
        } else {
            header('Location: ' . BASEURL . '/alergi');
            exit;
        }
    }
}
