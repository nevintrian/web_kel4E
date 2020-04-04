<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url'));
        $this->load->model('m_barang');
		$this->load->model('m_user');
		$this->load->model('m_pelanggan');
		$this->load->model('m_keluar');
		$this->load->model('m_masuk');
	}
	//menampilkan dashboard dan jumlah row
	public function index() 
	{
		$this->load->view('v_header');
		$this->load->view('v_sidebar');
		if ($this->session->userdata('level') == "") {
            redirect('login');
		} 
		//memaggil total row dari tabel barang dan user
		$data = array(
            'total_asset_barang'=> $this->m_barang->total_rows(),
			'total_asset_pelanggan'=> $this->m_user->total_rows(),
			'total_asset_karyawan'=> $this->m_pelanggan->total_rows(),
			'total_asset_masuk'=> $this->m_masuk->total_rows(),
			'total_asset_keluar'=> $this->m_keluar->total_rows(),
		);
		$this->load->view('v_dashboard', $data);
	}
}