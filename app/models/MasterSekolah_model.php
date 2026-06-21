<?php
class MasterSekolah_model {
    private $table = 'master_sekolah';
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getAllSekolah() {
        $this->db->query('SELECT * FROM ' . $this->table . ' ORDER BY nama_sekolah ASC');
        return $this->db->resultSet();
    }

    public function tambahDataSekolah($data) {
        $query = "INSERT INTO " . $this->table . " (npsn, nama_sekolah, jenjang, jumlah_siswa, status_sekolah, alamat_sekolah, telepon, nama_kepsek) VALUES (:npsn, :nama_sekolah, :jenjang, :jumlah_siswa, :status_sekolah, :alamat_sekolah, :telepon, :nama_kepsek)";
        $this->db->query($query);
        $this->db->bind('npsn', !empty($data['npsn']) ? $data['npsn'] : null);
        $this->db->bind('nama_sekolah', $data['nama_sekolah']);
        $this->db->bind('jenjang', !empty($data['jenjang']) ? $data['jenjang'] : 'SD');
        $this->db->bind('jumlah_siswa', $data['jumlah_siswa']);
        $this->db->bind('status_sekolah', !empty($data['status_sekolah']) ? $data['status_sekolah'] : null);
        $this->db->bind('alamat_sekolah', !empty($data['alamat_sekolah']) ? $data['alamat_sekolah'] : null);
        $this->db->bind('telepon', !empty($data['telepon']) ? $data['telepon'] : null);
        $this->db->bind('nama_kepsek', !empty($data['nama_kepsek']) ? $data['nama_kepsek'] : null);
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function hapusDataSekolah($id) {
        $query = "DELETE FROM " . $this->table . " WHERE id_sekolah = :id";
        $this->db->query($query);
        $this->db->bind('id', $id);
        $this->db->execute();
        return $this->db->rowCount();
    }

    public function ubahDataSekolah($data) {
        $query = "UPDATE " . $this->table . " SET npsn = :npsn, nama_sekolah = :nama_sekolah, jenjang = :jenjang, jumlah_siswa = :jumlah_siswa, status_sekolah = :status_sekolah, alamat_sekolah = :alamat_sekolah, telepon = :telepon, nama_kepsek = :nama_kepsek WHERE id_sekolah = :id_sekolah";
        $this->db->query($query);
        $this->db->bind('npsn', !empty($data['npsn']) ? $data['npsn'] : null);
        $this->db->bind('nama_sekolah', $data['nama_sekolah']);
        $this->db->bind('jenjang', !empty($data['jenjang']) ? $data['jenjang'] : 'SD');
        $this->db->bind('jumlah_siswa', $data['jumlah_siswa']);
        $this->db->bind('status_sekolah', !empty($data['status_sekolah']) ? $data['status_sekolah'] : null);
        $this->db->bind('alamat_sekolah', !empty($data['alamat_sekolah']) ? $data['alamat_sekolah'] : null);
        $this->db->bind('telepon', !empty($data['telepon']) ? $data['telepon'] : null);
        $this->db->bind('nama_kepsek', !empty($data['nama_kepsek']) ? $data['nama_kepsek'] : null);
        $this->db->bind('id_sekolah', $data['id_sekolah']);
        $this->db->execute();
        return $this->db->rowCount();
    }
}
