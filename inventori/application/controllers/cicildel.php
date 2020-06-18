<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Cicildel extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_cicildel');
		$this->load->library('cetak_pdf');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 

		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'cicildel/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'cicildel/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'cicildel';
            $config['first_url'] = base_url() . 'cicildel';
		}
		
		$config['per_page'] = 5;
        $config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->m_cicildel->total_rows();
		$keluar1 = $this->m_cicildel->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
		$data = array(
            'keluar_data1' => $keluar1,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        $this->load->view('v_cicildel', $data); 
	}
	


	public function update_action($kode_penjualan) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('id_cicildel', $kode_penjualan);
				$this->db->update('cicildel', $data);
				$this->db->where('id_cicildel', $kode_penjualan);
           		 redirect(site_url('cicildel'));

		}
		

		public function hapus_penjualan($id)
	{
		
		$data = array(
			'del' => "0"

			);
			
			$this->db->where('id_keluar', $id);
			$this->db->update('cicildel', $data);
			$this->db->where('id_keluar', $id);
				redirect(site_url('cicildel'));
	}


	public function status($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('id_keluar', $id);
				$this->db->update('detail_keluar', $data);
				$this->db->where('id_keluar', $id);
           		 redirect(site_url('cicildel'));

		}

		public function restore($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'del' => "0"

                );
                
				$this->db->where('id_cicil', $id);
				$this->db->update('cicil', $data);
				$this->db->where('id_cicil', $id);
           		 redirect(site_url('cicildel'));

	}


		public function statusall() 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('status', 0);
				$this->db->update('detail_keluar', $data);
				$this->db->where('status', 0);
           		 redirect(site_url('cicildel'));

		}
    
}






