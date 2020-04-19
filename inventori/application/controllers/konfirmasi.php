<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Konfirmasi extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_konfirmasi');
		$this->load->library('cetak_pdf');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 

		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'konfirmasi/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'konfirmasi/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'konfirmasi';
            $config['first_url'] = base_url() . 'konfirmasi';
		}
		
		$config['per_page'] = 5;
        $config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->m_konfirmasi->total_rows();
		$keluar = $this->m_konfirmasi->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
		$data = array(
            'keluar_data' => $keluar,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        $this->load->view('v_konfirmasi', $data); 
	}
	


	public function update_action($kode_penjualan) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('id_keluar', $kode_penjualan);
				$this->db->update('detail_keluar', $data);
				$this->db->where('id_keluar', $kode_penjualan);
           		 redirect(site_url('konfirmasi'));

		}
		

		public function hapus_penjualan($kode_penjualan)
	{
		
        $this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('keluar');
		$this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('detail_keluar');
		redirect('konfirmasi');
	}
    
}






