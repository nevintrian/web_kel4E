<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Keluar extends CI_Controller { 

	
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
        $this->load->view('v_keluar'); 
	}
	
	public function tambah()
	{
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
		$this->load->model('m_nourut');
		$data = array(

			'kode' => $this->m_nourut->buat_kode_penjualan(),
			
		);
		$this->load->view('v_keluar1',$data);
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
        redirect('keluar/tambah');
	}

	public function hapus_cart($id)
	{
		
        $data = array(
            'rowid'    => $id,
            'qty'   => 0,
        );
        $this->cart->update($data);
        redirect('keluar/tambah');
	}

	public function simpan_penjualan()
	{
        $kode_penjualan = $this->input->post('kode_penjualan');
        $total_harga = $this->input->post('total_harga');
        $tgl_penjualan = $this->input->post('tgl_penjualan');
        // $pelanggan = $this->input->post('pelanggan');

        $data = array(
        	//'nama_pelanggan' => $pelanggan,
            'id_transaksi'=> $kode_penjualan,
            'total_harga'=> $total_harga,
			'tgl_transaksi'=> $tgl_penjualan,
			'status'=> "keluar",
        );
        $this->db->insert('transaksi', $data);

	
	foreach ($this->cart->contents() as $items) {
		$id_barang = $items['id'];
		$qty = $items['qty'];
		$d = array(
			'id_transaksi' => $kode_penjualan,
			'id_barang' => $id_barang,
			'qty' => $qty,
		);
		$this->db->insert('detail_transaksi', $d);
		//$this->db->query("UPDATE menu SET satuan=satuan-'$qty' WHERE kode_menu='$id_barang'");
	} 
	$this->cart->destroy();
	redirect('keluar');
}


public function hapus_penjualan($kode_penjualan)
	{
		
        $this->db->where('id_transaksi', $kode_penjualan);
		$this->db->delete('transaksi');
		$this->db->where('id_transaksi', $kode_penjualan);
		$this->db->delete('detail_transaksi');
		?>
		<script type="text/javascript">
			alert('Berhapus Hapus Data');
			window.location='<?php echo base_url('keluar') ?>';
		</script>
		<?php
	}

	public function cetak_penjualan($kode_penjualan)
	{
		
        $data = array(
			'data' => $this->db->query("SELECT * FROM transaksi where id_transaksi='$kode_penjualan'"),
		);
		$this->load->view('v_keluar3',$data);
	}

	public function detail_penjualan($kode_penjualan)
	{
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
		$data = array(

			'data' => $this->db->query("SELECT * FROM transaksi where id_transaksi='$kode_penjualan'"),
		);
		$this->load->view('v_keluar2',$data);
	}



}