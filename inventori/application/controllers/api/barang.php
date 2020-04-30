<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Barang extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_barang');
    }


    public function index_get(){


    $id=$this->get('id');
    if($id==null) {
    $barang=$this->m_barang->getbarang();
    }else {
        $barang=$this->m_barang->getbarang($id);

    }
     
     

    if($barang) {

            $this->response( [
                'status' => true,
                'data' => $barang
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
            if($this->m_barang->deletebarang($id)>0) {
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
    'nama_barang' => $this->post('nama_barang'),
    'harga' => $this->post('harga'),
    'stok' => $this->post('stok'),
    'kemasan' => $this->post('kemasan'),
    'jenis' => $this->post('jenis'),
    'merk' => $this->post('merk'),
    'id_supplier' => $this->post('id_supplier'),
    'foto_barang' => $this->post('foto_barang'),
    ];

    if($this->m_barang->createbarang($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data barang berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data barang gagal ditambahkan'
        ], 400 );

    }


}


public function index_put() {
    $id=$this->put('id');
    $data = [
        'nama_barang' => $this->put('nama_barang'),
        'harga' => $this->put('harga'),
        'stok' => $this->put('stok'),
        'kemasan' => $this->put('kemasan'),
        'jenis' => $this->put('jenis'),
        'merk' => $this->put('merk'),
        'id_supplier' => $this->put('id_supplier'),
        'foto_barang' => $this->put('foto_barang'),
        ];

        if($this->m_barang->updatebarang($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data barang berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data barang gagal diupdate'
            ], 400 );
    
        }
}
}