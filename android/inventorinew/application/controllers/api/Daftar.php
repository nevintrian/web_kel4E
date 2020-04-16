<?php
class Daftar extends CI_Controller {
    //menampilkan form pendaftaran

    //untuk menyimpan registrasi
    public function index() 
	{

		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		$nama = $this->input->post('nama');
		$level = $this->input->post('level');
		
		$data = array(
		
			'username' => $username,
			'password' => $password,
			'nama' => $nama,
			'level' => $level,
			'foto' => "pp.jpg",
		);

		$this->db->insert('user', $data);
		echo 'User Registration Successfully';
		
	}
}
		?>
		

        

       
	    