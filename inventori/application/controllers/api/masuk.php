<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Masuk extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_masuk');
    }


    public function index_get(){


    $id=$this->get('id');
    if($id==null) {
    $masuk=$this->m_masuk->getmasuk();
    }else {
        $masuk=$this->m_masuk->getmasuk($id);

    }
     
     

    if($masuk) {

            $this->response( [
                'status' => true,
                'data' => $masuk
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
            if($this->m_masuk->deletemasuk($id)>0) {
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
    'id_supplier' => $this->post('id_supplier'),
    'tgl_masuk' => $this->post('tgl_masuk'),
    'total_masuk' => $this->post('total_masuk'),
    ];

    if($this->m_masuk->createmasuk($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data masuk berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data masuk gagal ditambahkan'
        ], 400 );

    }


}


public function index_put() {
    $id=$this->put('id');
    $data = [
        'id_supplier' => $this->put('id_supplier'),
        'tgl_masuk' => $this->put('tgl_masuk'),
        'total_masuk' => $this->put('total_masuk'),
        ];

        if($this->m_masuk->updatemasuk($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data masuk berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data masuk gagal diupdate'
            ], 400 );
    
        }
}
}