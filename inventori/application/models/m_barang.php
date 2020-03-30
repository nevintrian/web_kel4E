
<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_barang extends CI_Model
{
	//deklarasi tabel
	public $table = 'barang';
    public $id = 'id_barang';
	public $order = 'DESC';
	
	//untuk tampilan home
	public function all(){  
		$hasil = $this->db->get('barang'); 
		if($hasil->num_rows() > 0){ 
			return $hasil->result();
		} else {
			return array();
		}
    }


	//menghitung rows untuk pencarian dan dashboard
	public function total_rows($q = NULL) { 
        $this->db->like('id_barang', $q);
	$this->db->or_like('nama_barang', $q);
	$this->db->or_like('stok', $q);
	$this->db->or_like('harga', $q);
	$this->db->or_like('merk', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data($limit, $per_page = 0, $q = NULL) { 
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_barang', $q);
	$this->db->or_like('nama_barang', $q);
	$this->db->or_like('stok', $q);
	$this->db->or_like('harga', $q);
	$this->db->or_like('merk', $q);
	$this->db->limit($limit, $per_page);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
	}
	
	 // memanggil id yang akan digunakan untuk edit dan delete
	function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
}