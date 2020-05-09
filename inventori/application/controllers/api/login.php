<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Login extends RestController{


    public function index_post() {

        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        $cek_user = $this->db->query("SELECT * FROM user WHERE username='$username' and password='$password' ");
        foreach ($cek_user->result() as $row) {
            $data['id_user'] = $row->id_user;
            $data['nama'] = $row->nama;
            $data['username'] = $row->username;
            $data['level'] = $row->level;
      
        }
        
        if ($cek_user->num_rows() == 1) {

                $this->response( [
                    'status' => true,
                    'message' => 'anda berhasil login',
                    'username' => $data['username'],
                    'level' => $data['level'],
                    'id_user' => $data['id_user']
                    
                   
                ], 200 );
            } else {
                $this->response( [
                    'status' => false,
                    'message' => 'login gagal'
                ], 400 );
        
            }
        }
    }

        
        