<?php

defined('BASEPATH') OR exit('No direct script access allowed');


class Barang extends BD_Controller {

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
 
        $this->auth();
        $this->load->database();
    }
    

    public function index_get()
    {
        $response["data"] = $this->db->get('barang')->result();
        $response['status'] = "success";

        $this->response($response, 200);   
    }

    public function list_get()
    {
        $barang = $this->db
                        ->select('*')
                        ->get('barang')
                        ->result();
        $response['status'] = "success";
        $response['data'] = $barang;
        
        $this->response($response, 200);
    }

    public function index_post()
    {

        $nmfile = "barang_".time();
        $config['upload_path'] = './upload/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = '160000000';
        $config['file_name'] = $nmfile;

        $this->load->library('upload');
        $this->upload->initialize($config);
        $this->upload->do_upload('foto_barang');
        $result1 = $this->upload->data();
        $result = array('barang'=>$result1);
        $dfile = $result['barang']['file_name'];
    

        $data = [
            
            'nama_barang' => $this->post('nama_barang'),
            'kemasan' => $this->post('kemasan'),
            'stok' => $this->post('stok'),
            'harga' => $this->post('harga'),
            'foto_barang' => $dfile,
        ];


        $insert = $this->db->insert('barang', $data);

        if ($insert) {
            $this->response(['status' => 'success'], 200);
        } else {
            $this->response(['status' => 'fail', 200]);            
        }


    }

    public function update_post($id_barang)
    {
        $data = [

            'nama_barang' => $this->post('nama_barang'),
            'kemasan' => $this->post('kemasan'),
            'stok' => $this->post('stok'),
            'harga' => $this->post('harga'),

        ];

        $config['upload_path'] = './upload/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['encrypt_name'] = TRUE;
        $config['max_size'] = '160000000';
        $config['max_width']  = '1110024';
        $config['max_height']  = '115768';

        $this->load->library('upload');
        $this->upload->initialize($config);
        
        if ($this->upload->do_upload('foto_barang')) {            
            $foto_barang = array('upload_data' => $this->upload->data());
            $file_name = $foto_barang['upload_data']['file_name'];
            $data['foto_barang'] = $file_name;

            $this->db->where('id_barang', $id_barang);
            $data_foto_barang = $this->db->get('barang')->row_array();
            $foto_barang = $data_foto_barang['foto_barang'];
            $path = './upload/'.$foto_barang;
            unlink($path);
        }
        
        $this->db->where('id_barang', $id_barang);
        $update = $this->db->update('barang', $data);

        if ($update) {
            $this->response(['status' => 'success'], 200);
        } else {
            $this->response(['status' => 'fail'], 200);
        }

    }

    public function delete_post($id_barang)
    {
        // $id = $this->post('id');

        $this->db->where('id_barang', $id_barang);
        $data = $this->db->get('barang')->row_array();
        $foto_barang = $data['foto_barang'];
        $path = './upload/'.$foto_barang;
        unlink($path);

        $this->db->where('id_barang', $id_barang);
        $delete = $this->db->delete('barang');

        if ($delete) {
            $this->response(['status' => 'success'], 201);
        } else {
            $this->response(['status' => 'fail'], 502);            
        }
    }

}
