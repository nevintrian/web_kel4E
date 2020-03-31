<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_masuk extends CI_Model
{

    public $table = 'detail_transaksi';

    public function total_rows()
    {
        $this->db->like('status','masuk');
        $this->db->from($this->table);
            return $this->db->count_all_results();
    }
}