<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Home extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_home');
	}
 //menampilkan barang pada home
	public function index(){	

		$this->load->view('v_header');

		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home';
            $config['first_url'] = base_url() . 'home';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 12;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows($q);
        $home = $this->m_home->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
		

		$this->load->view('v_home',$data); 
		$this->load->view('v_footer'); 



	}
    
}