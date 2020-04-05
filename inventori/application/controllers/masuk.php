<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Masuk extends CI_Controller { 

	
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
	
	public function tambah()
	{
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
		$this->load->model('m_nourut');
		$data = array(

			'kode' => $this->m_nourut->buat_kode_pembelian(),
			
		);
		$this->load->view('v_masuk1',$data);
	}


	public function cek_barang()
	{
        $id_barang = $this->input->post('id_barang');
        $cek = $this->db->query("SELECT * FROM barang WHERE id_barang='$id_barang'")->row();
		$data = array(
			'stok' => $cek->stok,
			'harga' => $cek->harga,
			'id_barang' => $cek->id_barang,
			'nama_barang' => $cek->nama_barang,
		

		);
		echo json_encode($data);
	}


	public function simpan_cart()
	{
		
        $data = array(
            'id'    => $this->input->post('id_barang'),
            'qty'   => $this->input->post('jumlah'),
            'price' => $this->input->post('harga'),
            'name'  => $this->input->post('nabar'),
        );
        $this->cart->insert($data);
        redirect('masuk/tambah');
	}

	public function hapus_cart($id)
	{
		
        $data = array(
            'rowid'    => $id,
            'qty'   => 0,
        );
        $this->cart->update($data);
        redirect('masuk/tambah');
	}

	public function simpan_penjualan()
	{
        $kode_pembelian = $this->input->post('kode_pembelian');
        $total_masuk = $this->input->post('total_masuk');
        $tgl_penjualan = $this->input->post('tgl_penjualan');
        $id_supplier = $this->input->post('id_supplier');

        $data = array(
        	'id_supplier' => $id_supplier,
            'id_masuk'=> $kode_pembelian,
            'total_masuk'=> $total_masuk,
			'tgl_masuk'=> $tgl_penjualan,
			
        );
        $this->db->insert('masuk', $data);

	
	foreach ($this->cart->contents() as $items) {
		$id_barang = $items['id'];
		$qty_masuk = $items['qty'];
		$d = array(
			'id_masuk' => $kode_pembelian,
			'id_barang' => $id_barang,
			'qty_masuk' => $qty_masuk,
		);
		$this->db->insert('detail_masuk', $d);
		//$this->db->query("UPDATE menu SET satuan=satuan-'$qty' WHERE kode_menu='$id_barang'");
	} 
	$this->cart->destroy();
	redirect('masuk');
}


public function hapus_penjualan($kode_pembelian)
	{
		
        $this->db->where('id_masuk', $kode_pembelian);
		$this->db->delete('masuk');
		$this->db->where('id_masuk', $kode_pembelian);
		$this->db->delete('detail_masuk');
		?>
		<script type="text/javascript">
			alert('Berhapus Hapus Data');
			window.location='<?php echo base_url('masuk') ?>';
		</script>
		<?php
	}

	public function cetak_penjualan($kode_pembelian)
	{
		
        $data = array(
			'data' => $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where id_masuk='$kode_pembelian'"),
		);
		$this->load->view('v_masuk3',$data);
	}

	public function detail_penjualan($kode_pembelian)
	{
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
		$data = array(

			'data' => $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where id_masuk='$kode_pembelian'"),
		);
		$this->load->view('v_masuk2',$data);
	}



}