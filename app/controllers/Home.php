<?php

class Home extends Controller {
    public function __construct() {
        parent::__construct();
        
    }

    public function index() {
        $data['judul'] = 'Home';
        $this->view('home/index', $data);
    }
}
