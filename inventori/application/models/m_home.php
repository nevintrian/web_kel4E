<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_home extends CI_Model
{
	//deklarasi tabel
	public $table = 'barang';
    public $id = 'id_barang';
	public $order = 'ASC';
	
	//untuk tampilan home


    public function total_rows($q = NULL) { //untuk memunculkan record
        $this->db->like('id_barang', $q);
	$this->db->or_like('nama_barang', $q);
	$this->db->or_like('stok', $q);
	$this->db->or_like('harga', $q);
	$this->db->or_like('merk', $q);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);
    $this->db->or_like('nama_barang', $q);
    $this->db->or_like('jenis', $q);
    $this->db->select('*');
    $this->db->from('barang');
    $this->db->where('jenis', 'makanan');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }


    function get_limit_data_makanan($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);

    $this->db->select('*');
    $this->db->from('barang');
    $this->db->where('jenis', 'makanan');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }


    public function total_rows_makanan($q = NULL) { //untuk memunculkan record
        $this->db->select('*');
        $this->db->from('barang');
        $this->db->where('jenis', 'makanan');
        return $this->db->count_all_results();
    }

    //

    function get_limit_data_minuman($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);

    $this->db->select('*');
    $this->db->from('barang');
    $this->db->where('jenis', 'minuman');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }


    public function total_rows_minuman($q = NULL) { //untuk memunculkan record
        $this->db->select('*');
        $this->db->from('barang');
        $this->db->where('jenis', 'minuman');
        return $this->db->count_all_results();
    }

    function get_limit_data_pembalut($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);

    $this->db->select('*');
    $this->db->from('barang');
    $this->db->where('jenis', 'pembalut');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }


    public function total_rows_pembalut($q = NULL) { //untuk memunculkan record
        $this->db->select('*');
        $this->db->from('barang');
        $this->db->where('jenis', 'pembalut');
        return $this->db->count_all_results();
    }

    function get_limit_data_kosmetik($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);

    $this->db->select('*');
    $this->db->from('barang');
    $this->db->where('jenis', 'kosmetik');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }


    public function total_rows_kosmetik($q = NULL) { //untuk memunculkan record
        $this->db->select('*');
        $this->db->from('barang');
        $this->db->where('jenis', 'kosmetik');
        return $this->db->count_all_results();
    }

    function get_limit_data_permen($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);

    $this->db->select('*');
    $this->db->from('barang');
    $this->db->where('jenis', 'permen');
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }


    public function total_rows_permen($q = NULL) { //untuk memunculkan record
        $this->db->select('*');
        $this->db->from('barang');
        $this->db->where('jenis', 'permen');
        return $this->db->count_all_results();
    }


}
