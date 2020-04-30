<?php
class Barang1 extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang1');
        $this->load->model('m_barang1');
        $this->load->library('pagination');
        $this->load->library('upload'); 
        $this->load->helper('form'); 
        $this->load->library('cetak_pdf');
    }
    
    //fungsi menampilkan data barang dan halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //konfigurasi url saat klik halaman
        $q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'barang1/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'barang1/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'barang1';
            $config['first_url'] = base_url() . 'barang1';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 5;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_barang1->total_rows($q);
        $barang1 = $this->m_barang1->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'barang_data1' => $barang1,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        //menampilkan view barang
        $this->load->view('v_barang3', $data);

    } 

    public function restore($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'del' => "0"

                );
                
				$this->db->where('id_barang', $id);
				$this->db->update('barang', $data);
				$this->db->where('id_barang', $id);
           		 redirect(site_url('barang1'));

	}

    //fungsi delete data database
    public function delete($id) 
{
    $row = $this->m_barang1->get_by_id($id);

    if ($row) {
        $this->m_barang1->delete($id);
        redirect(site_url('barang1'));
       
            }
       
	    }
  
        
    }
        ?>


