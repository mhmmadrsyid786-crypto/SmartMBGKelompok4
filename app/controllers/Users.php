<?php

class Users extends Controller
{
    public function __construct() {
        parent::__construct();
        if (!isset($_SESSION['user_id'])) {
            header('Location: ' . BASEURL . '/auth');
            exit;
        }
        if (isset($_SESSION['role']) && $_SESSION['role'] !== 'admin') {
            header('Location: ' . BASEURL . '/dashboard');
            exit;
        }
    }

    public function index() {
        $data['judul'] = 'Data Users';
        $data['users'] = $this->model('User_model')->getAllUsers();

        $this->view('templates/header', $data);
        $this->view('users/index', $data);
        $this->view('templates/footer');
    }

    public function tambah()
    {
        $this->verifyCsrfToken(isset($_POST['csrf_token']) ? $_POST['csrf_token'] : '');
        $file = isset($_FILES['foto_profil']) ? $_FILES['foto_profil'] : null;
        if ($this->model('User_model')->tambahDataUser($_POST, $file) > 0) {
            $this->model('Log_model')->catatLog("Menambahkan user baru: " . $_POST['username']);
            header('Location: ' . BASEURL . '/users');
            exit;
        } else {
            header('Location: ' . BASEURL . '/users');
            exit;
        }
    }

    public function hapus($id)
    {
        if ($this->model('User_model')->hapusDataUser($id) > 0) {
            $this->model('Log_model')->catatLog("Menghapus data user ID: " . $id);
            header('Location: ' . BASEURL . '/users');
            exit;
        } else {
            header('Location: ' . BASEURL . '/users');
            exit;
        }
    }

    public function ubah()
    {
        $file = isset($_FILES['foto_profil']) ? $_FILES['foto_profil'] : null;
        if ($this->model('User_model')->ubahDataUser($_POST, $file) > 0) {
            $this->model('Log_model')->catatLog("Mengubah data user ID: " . $_POST['id_user']);
            header('Location: ' . BASEURL . '/users');
            exit;
        } else {
            header('Location: ' . BASEURL . '/users');
            exit;
        }
    }
}
