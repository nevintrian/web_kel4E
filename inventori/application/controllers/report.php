<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Report extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_barang');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
        $this->load->view('v_masuk'); 
    }

    public function cetak_penjualan()
	{
		

		$this->load->view('v_reportcetak');
	}
    
}