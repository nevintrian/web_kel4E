<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_keluar extends CI_Model
{

    public $table = 'keluar';

    public function total_rows($q = NULL)
    {
        if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
        $this->db->or_like('nama', $q);
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "detail_keluar.status='1'";
        $this->db->where($where);
        
        }else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
            $id = $this->session->userdata('id_user');
            $this->db->or_like('nama', $q);
            $this->db->distinct();
            $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
            $this->db->from('keluar');
            $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
            $this->db->join('user', 'user.id_user=keluar.id_user');
            $where = "user.id_user=$id";
            $this->db->where($where);
                 
    }
    return $this->db->count_all_results();   
}



 



    function get_limit_data($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination

    if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
    $this->db->order_by('keluar.id_keluar', 'DESC');
    $this->db->or_like('nama', $q);
    $this->db->distinct();
    $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
    $this->db->from('keluar');
    $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
    $this->db->join('user', 'user.id_user=keluar.id_user');
    $where = "detail_keluar.status='1'";
    $this->db->where($where);
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }

    else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
        $id = $this->session->userdata('id_user');
        $this->db->order_by('keluar.id_keluar', 'DESC');
        $this->db->or_like('nama', $q);
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "user.id_user=$id";
        $this->db->where($where);
        $this->db->limit($limit, $per_page);
            return $this->db->get()->result();
}
    }
}

