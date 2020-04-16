<?php
class Pelanggan extends BD_Controller {

     //load library, helper, dan model
	  function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->auth();
        $this->load->database();
        $this->load->model('pelanggan_model');
        $this->load->library('pagination');
    }


    public function index_get()
    {        
        $config = array();
        $config["base_url"] = base_url() . "api/pelanggan";
        $config["total_rows"] = $this->pelanggan_model->count();
        $config["per_page"] = 10;
        $config["uri_segment"] = 3;
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        
        $response["data"] = $this->pelanggan_model->fetch($config["per_page"], $page);
        $response['status'] = "success";

        $this->response($response, 200);

    }

    public function index_post()
    {
        $data = [
            'nama' => $this->post('nama'),
            'no_telp' => $this->post('no_telp'),
            'alamat' => $this->post('alamat'),
            'level'=> "customer"
        ];
    
        $insert = $this->db->insert('user', $data);

        if ($insert) {
            $this->response(['status' => 'success'], 200);
        } else {
            $this->response(['status' => 'fail', 200]);            
        }


    }


    public function update_post($id_user)
    {
        $data = [
            'nama' => $this->post('nama'),
            'no_telp' => $this->post('no_telp'),
            'alamat' => $this->post('alamat')
        ];
        
        $this->db->where('id_user', $id_user);
        $update = $this->db->update('user', $data);

        if ($update) {
            $this->response(['status' => 'success'], 200);
        } else {
            $this->response(['status' => 'fail'], 200);
        }

    }

    public function delete_post($id_user)
    {
        $this->db->where('id_user', $id_user);
        $delete = $this->db->delete('user');

        if ($delete) {
            $this->response(['status' => 'success'], 201);
        } else {
            $this->response(['status' => 'fail'], 502);            
        }
    }

}