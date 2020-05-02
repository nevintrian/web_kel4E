<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Gudang extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_gudang');
    }


    public function index_get(){


    $id=$this->get('id');
    if($id==null) {
    $gudang=$this->m_gudang->getgudang();
    }else {
        $gudang=$this->m_gudang->getgudang($id);

    }
     
     

    if($gudang) {

            $this->response( [
                'status' => true,
                'data' => $gudang
            ], 200 );
     
    }else {
        $this->response( [
            'status' => false,
            'message' => 'id tidak ditemukan'
        ], 404 );
    }
}

public function index_delete(){
    $id=$this->delete('id');

    if($id==null) {
        $this->response ([
            'status' => false,
            'message' => 'masukkan id delete'
        ], 400 );
        }else {
            if($this->m_gudang->deletegudang($id)>0) {
                $this->response( [
                    'status' => true,
                    'id'=> $id,
                    'message' => 'data berhasil dihapus'
                ], 200 );
            }else{
                $this->response( [
                    'status' => false,
                    'message' => 'id tidak ditemukan'
                ], 404 );

            }
        }
}

public function index_post(){
    $data = [
    'email' => $this->post('email'),
    'username' => $this->post('username'),
    'password' => $this->post('password'),
    'level' => $this->post('level'),
    'nama' => $this->post('nama'),
    'tgl_lahir' => $this->post('tgl_lahir'),
    'jenis_kelamin' => $this->post('jenis_kelamin'),
    'alamat' => $this->post('alamat'),
    'no_telp' => $this->post('no_telp'),
    'foto' => $this->post('foto'),
    ];

    if($this->m_gudang->creategudang($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data gudang berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data gudang gagal ditambahkan'
        ], 400 );

    }


}


public function index_put() {
    $id=$this->put('id');
    $data = [
        'email' => $this->put('email'),
        'username' => $this->put('username'),
        'password' => $this->put('password'),
        'level' => $this->put('level'),
        'nama' => $this->put('nama'),
        'tgl_lahir' => $this->put('tgl_lahir'),
        'jenis_kelamin' => $this->put('jenis_kelamin'),
        'alamat' => $this->put('alamat'),
        'no_telp' => $this->put('no_telp'),
        'foto' => $this->put('foto'),
        ];

        if($this->m_gudang->updategudang($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data gudang berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data gudang gagal diupdate'
            ], 400 );
    
        }
}
}