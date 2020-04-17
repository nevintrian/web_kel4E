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
		$this->load->model('m_nourut');

		$data = array(

			'kode' => $this->m_nourut->buat_kode_penjualan(),
			
		);
		$this->load->view('v_keranjang',$data);
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


	public function simpan_penjualan()
	{
        $kode_penjualan = $this->input->post('kode_penjualan');
        $total_keluar = $this->input->post('total_keluar');
        $tgl_penjualan = $this->input->post('tgl_penjualan');
        $id_user = $this->input->post('id_user');

        $data = array(
        	
            'id_keluar'=> $kode_penjualan,
            'total_keluar'=> $total_keluar,
			'tgl_keluar'=> $tgl_penjualan,
			'id_user'=> $id_user,
			
        );
        $this->db->insert('keluar', $data);

	
	foreach ($this->cart->contents() as $items) {
		$id_barang = $items['id'];
		$qty_keluar = $items['qty'];
		$d = array(
			'id_keluar' => $kode_penjualan,
			'id_barang' => $id_barang,
			'qty_keluar' => $qty_keluar,
			'status' => "0",
			
		);
		$this->db->insert('detail_keluar', $d);
		//$this->db->query("UPDATE menu SET satuan=satuan-'$qty_keluar' WHERE kode_menu='$id_barang'");
	} 
	$this->cart->destroy();
	redirect('keranjang');
}
	
}