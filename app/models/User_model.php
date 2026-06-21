<?php
class User_model {
    private $table = 'users';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getUserByUsername($username) {
        $this->db->query('SELECT * FROM ' . $this->table . ' WHERE username=:username');
        $this->db->bind('username', $username);
        return $this->db->single();
    }

    public function getAllUsers() {
        $this->db->query('SELECT * FROM ' . $this->table);
        return $this->db->resultSet();
    }

    public function uploadFoto($file) {
        $namaFile = $file['name'];
        $ukuranFile = $file['size'];
        $error = $file['error'];
        $tmpName = $file['tmp_name'];

        if ($error === 4) {
            return false;
        }

        $ekstensiGambarValid = ['jpg', 'jpeg', 'png'];
        $ekstensiGambar = explode('.', $namaFile);
        $ekstensiGambar = strtolower(end($ekstensiGambar));

        if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {
            return false;
        }

        if ($ukuranFile > 2000000) {
            return false;
        }

        $namaFileBaru = uniqid() . '.' . $ekstensiGambar;
        $targetDir = '../public/img/profil/';
        if (!is_dir($targetDir)) {
            mkdir($targetDir, 0777, true);
        }

        move_uploaded_file($tmpName, $targetDir . $namaFileBaru);

        return $namaFileBaru;
    }

    public function tambahDataUser($data, $file = null) {
        $foto = null;
        if ($file && $file['error'] !== 4) {
            $foto = $this->uploadFoto($file);
        }

        $query = "INSERT INTO " . $this->table . " (nama, username, password, role, foto_profil) VALUES (:nama, :username, :password, :role, :foto_profil)";
        $this->db->query($query);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('username', $data['username']);
        $this->db->bind('password', password_hash($data['password'], PASSWORD_DEFAULT));
        $this->db->bind('role', $data['role']);
        $this->db->bind('foto_profil', $foto);
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function hapusDataUser($id) {
        $query = "DELETE FROM " . $this->table . " WHERE id_user = :id";
        $this->db->query($query);
        $this->db->bind('id', $id);
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function ubahDataUser($data, $file = null) {
        $fotoBaru = null;
        if ($file && $file['error'] !== 4) {
            $fotoBaru = $this->uploadFoto($file);
        }

        // Jika foto baru diupload, update field foto_profil
        $queryFoto = "";
        if ($fotoBaru) {
            $queryFoto = ", foto_profil = :foto_profil";
        }

        if(!empty($data['password'])) {
            $query = "UPDATE " . $this->table . " SET nama = :nama, username = :username, password = :password, role = :role" . $queryFoto . " WHERE id_user = :id_user";
        } else {
            $query = "UPDATE " . $this->table . " SET nama = :nama, username = :username, role = :role" . $queryFoto . " WHERE id_user = :id_user";
        }
        
        $this->db->query($query);
        $this->db->bind('nama', $data['nama']);
        $this->db->bind('username', $data['username']);
        if(!empty($data['password'])) {
            $this->db->bind('password', password_hash($data['password'], PASSWORD_DEFAULT));
        }
        $this->db->bind('role', $data['role']);
        $this->db->bind('id_user', $data['id_user']);
        
        if ($fotoBaru) {
            $this->db->bind('foto_profil', $fotoBaru);
        }
        
        $this->db->execute();
        return $this->db->rowCount();
    }
}
