<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_keluar extends CI_Model
{

    public $table = 'detail_keluar';

    public function total_rows()
    {
        
        $this->db->from($this->table);
            return $this->db->count_all_results();
    }
}