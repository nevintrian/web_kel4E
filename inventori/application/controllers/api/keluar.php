<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Keluar extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_keluar');
    }


    public function index_get(){


    $id=$this->get('id');
    if($id==null) {
    $keluar=$this->m_keluar->getkeluar();
    }else {
        $keluar=$this->m_keluar->getkeluar($id);

    }
     
     

    if($keluar) {

            $this->response( [
                'status' => true,
                'data' => $keluar
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
            'message' => 'keluarkan id delete'
        ], 400 );
        }else {
            if($this->m_keluar->deletekeluar($id)>0) {
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
    'id_user' => $this->post('id_user'),
    'tgl_keluar' => $this->post('tgl_keluar'),
    'total_keluar' => $this->post('total_keluar'),
    'foto_keluar' => $this->post('foto_keluar'),
    ];

    if($this->m_keluar->createkeluar($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data keluar berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data keluar gagal ditambahkan'
        ], 400 );

    }


}


public function index_put() {
    $id=$this->put('id');
    $data = [
        'id_user' => $this->put('id_user'),
        'tgl_keluar' => $this->put('tgl_keluar'),
        'total_keluar' => $this->put('total_keluar'),
        'foto_keluar' => $this->put('foto_keluar'),
        ];

        if($this->m_keluar->updatekeluar($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data keluar berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data keluar gagal diupdate'
            ], 400 );
    
        }
}
}