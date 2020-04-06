<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_supplier extends CI_Model
{
	//deklarasi tabel
	public $table = 'supplier';
    public $id = 'id_supplier';
	public $order = 'DESC';
	
	//untuk tampilan home
	public function all(){  
		$hasil = $this->db->get('supplier'); 
		if($hasil->num_rows() > 0){ 
			return $hasil->result();
		} else {
			return array();
		}
    }


	//menghitung rows untuk pencarian dan dashboard
	public function total_rows($q = NULL) { 
        $this->db->like('id_supplier', $q);
	$this->db->or_like('nama_supplier', $q);
	$this->db->or_like('alamat', $q);
	$this->db->or_like('no_telp', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data($limit, $per_page = 0, $q = NULL) { 
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_supplier', $q);
	$this->db->or_like('nama_supplier', $q);
	$this->db->or_like('alamat', $q);
	$this->db->or_like('no_telp', $q);
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