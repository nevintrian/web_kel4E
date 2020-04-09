<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Home extends CI_Controller { 

	
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
		$data['barang'] = $this->m_barang->all(); 
		$this->load->view('v_header',$data); 
		$this->load->view('v_home',$data); 
	}
    
}