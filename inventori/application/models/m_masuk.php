<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_masuk extends CI_Model
{
    public $id = 'id_masuk';
	public $order = 'DESC';
    public $table = 'masuk';

    public function total_rows($q = NULL)
    {
        $this->db->like('id_masuk', $q);
        $this->db->from($this->table);
            return $this->db->count_all_results();
    }


    function get_limit_data($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);
	$this->db->or_like('nama_supplier', $q);
    $this->db->select('*');
    $this->db->from('masuk');
    $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }
}