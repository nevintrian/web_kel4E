<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Keranjang extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
		$this->load->helper(array('form', 'url')); 
		$this->load->model('m_keluar');
		
	}
 //menampilkan barang pada home
	public function index(){	

		$this->load->view('v_header');
		$this->load->view('v_keranjang'); 
		$this->load->view('v_footer'); 



	}


	public function simpan()
	{
		
        $data = array(
            'id'    => $this->input->post('id_barang'),
            'qty'   => $this->input->post('jumlah'),
            'price' => $this->input->post('harga'),
            'name'  => $this->input->post('nabar'),
        );
        $this->cart->insert($data);
        redirect('keranjang');
	}

	
	public function hapus_cart($id)
	{
		
        $data = array(
            'rowid'    => $id,
            'qty'   => 0,
        );
        $this->cart->update($data);
        redirect('keranjang');
	}


	
}