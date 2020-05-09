<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class User extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_user');
    }


    public function index_get(){


    $id=$this->get('id');
    if($id==null) {
    $user=$this->m_user->getuser();
    }else {
        $user=$this->m_user->getuser($id);

    }
     
     

    if($user) {

            $this->response( [
                'status' => true,
                'data' => $user
            ], 200 );
     
    }else {
        $this->response( [
            'status' => false,
            'message' => 'id tidak ditemukan'
        ], 404 );
    }
}

public function index_delete($id){


    if($id==null) {
        $this->response ([
            'status' => false,
            'message' => 'masukkan id delete'
        ], 400 );
        }else {
            if($this->m_user->deleteuser($id)>0) {
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
    'level' => "admin",
    'nama' => $this->post('nama'),
    'tgl_lahir' => $this->post('tgl_lahir'),
    'jenis_kelamin' => $this->post('jenis_kelamin'),
    'alamat' => $this->post('alamat'),
    'no_telp' => $this->post('no_telp'),
    'foto' => $this->post('foto'),
    ];

    if($this->m_user->createuser($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data user berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data user gagal ditambahkan'
        ], 400 );

    }


}


public function index_put($id) {

    $data = [
        'email' => $this->put('email'),
        'username' => $this->put('username'),
        'password' => $this->put('password'),
        'level' => "admin",
        'nama' => $this->put('nama'),
        'tgl_lahir' => $this->put('tgl_lahir'),
        'jenis_kelamin' => $this->put('jenis_kelamin'),
        'alamat' => $this->put('alamat'),
        'no_telp' => $this->put('no_telp'),
        'foto' => $this->put('foto'),
        ];

        if($this->m_user->updateuser($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data user berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data user gagal diupdate'
            ], 400 );
    
        }
}
}