<?php
class Log extends Controller {
    public function __construct() {
        parent::__construct();
        
        if(isset($_SESSION['role']) && $_SESSION['role'] !== 'admin') { header('Location: ' . BASEURL . '/dashboard'); exit; }
    }

    public function index() {
        if($_SESSION['role'] !== 'admin') { header('Location: ' . BASEURL . '/dashboard'); exit; }
        $data['judul'] = 'Log Aktivitas';
        $data['log'] = $this->model('Log_model')->getAllLogs();
        
        $this->view('templates/header', $data);
        $this->view('log/index', $data);
        $this->view('templates/footer');
    }
}
