<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_user extends CI_Model
{
	//deklarasi tabel
    public $table = 'user';
    public $id = 'id_user';
	public $order = 'DESC';
	

	//menghitung rows untuk pencarian dan dashboard
	public function total_rows($q = NULL) {
    $this->db->or_like('nama', $q);
    $where = "level='admin'";
    $this->db->where($where);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data($limit, $per_page = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
	$this->db->or_like('nama', $q);
    $where = "level='admin'";
    $this->db->where($where);
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