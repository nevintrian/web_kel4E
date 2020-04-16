<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
    
   public function count() {
       return $this->db->count_all("user");
   }

   public function fetch($limit, $start) {
       $this->db->limit($limit, $start);
       $this->db->order_by('id_user', 'ASC');
       $this->db->select('*');
        $this->db->from('user');
        $where = "level='admin' or level='manajer' or level='gudang' or level='sales'";
        $this->db->where($where);
    return $this->db->get()->result();

   }

}
