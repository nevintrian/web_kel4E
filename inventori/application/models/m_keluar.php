<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_keluar extends CI_Model
{

    public $id = 'id_keluar';
	public $order = 'DESC';
    public $table = 'keluar';

    public function total_rows($q = NULL)
    {
        $this->db->like('id_keluar', $q);
        $this->db->from($this->table);
            return $this->db->count_all_results();
    }

    function get_limit_data($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);
	$this->db->or_like('nama', $q);
    $this->db->select('*');
    $this->db->from('keluar');
    $this->db->join('user', 'user.id_user=keluar.id_user');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }
}