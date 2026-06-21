<?php
class Validasi_alergi extends Controller {
    public function __construct() {
        parent::__construct();
        
        if(isset($_SESSION['role']) && $_SESSION['role'] !== 'admin' && $_SESSION['role'] !== 'petugas_distribusi') { header('Location: ' . BASEURL . '/dashboard'); exit; }
    }

    public function index() {
        $data['judul'] = 'Validasi Alergi';
        $data['validasi'] = $this->model('ValidasiAlergi_model')->getAllValidasi();
        
        $this->view('templates/header', $data);
        $this->view('validasi_alergi/index', $data);
        $this->view('templates/footer');
    }
}
