<?php
class Pelanggan extends CI_Controller {

     //load library, helper, dan model
	function __construct(){ 
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_pelanggan');
        $this->load->library('pagination');
        $this->load->library('upload'); 
		$this->load->helper('form');
    }
    
    //menampilkan data dan membuat halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //konfigurasi url saat klik halaman
        $q = urldecode($this->input->get('q', TRUE));
        $per_page = intval($this->input->get('per_page'));
        if ($q <> '') {
            $config['base_url'] = base_url() . 'pelanggan/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'pelanggan/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'pelanggan';
            $config['first_url'] = base_url() . 'pelanggan';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_pelanggan->total_rows($q);
        $user = $this->m_pelanggan->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
        'user_data' => $user,
        'q' => $q,
        'pagination' => $this->pagination->create_links(),
        'total_rows' => $config['total_rows'],
        'per_page' => $per_page,
        );
        //menampilkan view user
        $this->load->view('v_pelanggan', $data);

    } 
    //untuk menampilkan form insert data
    public function create() 
    {
         //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //memanggil value dari form yang diinputkan user
        $data = array(
        'button' => 'Create',
        'action' => site_url('pelanggan/create_action'),
        'id_user' => set_value('id_user'),
        'email' => set_value('email'),
	    'nama' => set_value('nama'),
	    'username' => set_value('username'),
	    'password' => set_value('password'),
        'level' => set_value('level'),
        'tgl_lahir' => set_value('tgl_lahir'),
        'jenis_kelamin' => set_value('jenis_kelamin'),
        'alamat' => set_value('alamat'),
        'no_telp' => set_value('no_telp'),
    );
        //menampilkan view tambah user
        $this->load->view('v_pelanggan1', $data);
    }


    //fungsi untuk insert ke database
    public function create_action() 
    {
      
            if (!empty($_FILES["foto"]["name"])) {  
                //konfigurasi upload gambar
                $nmfile = "user_".time();
                $config['upload_path'] = './image/user';
                $config['allowed_types'] = 'jpg|png';
                $config['max_size'] = '20000';
                $config['file_name'] = $nmfile;
                $this->load->library('upload');
                $this->upload->initialize($config);
                $this->upload->do_upload('foto');
                $result1 = $this->upload->data();
                $result = array('gambar'=>$result1);
                $dfile = $result['gambar']['file_name'];
        
                //memasukkan data ke database
                $data = array(
                'email' => $this->input->post('email',TRUE),
                'nama' => $this->input->post('nama',TRUE),
                'username' => $this->input->post('username',TRUE),
                'password' => md5($this->input->post('password',TRUE)),
                'level' => $this->input->post('level',TRUE),
                'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
                'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
                'alamat' => $this->input->post('alamat',TRUE),
                'no_telp' => $this->input->post('no_telp',TRUE),
                'foto' => $dfile,
            );
    
                $this->m_pelanggan->insert($data);
                ?>
                <script type="text/javascript">
                    alert('Data Berhasil di Tambahkan');
                    window.location = '<?php echo base_url('pelanggan'); ?>'
                </script>
                <?php
            
        } else {
    
            $data = array(
            'email' => $this->input->post('email',TRUE),
            'nama' => $this->input->post('nama',TRUE),
            'username' => $this->input->post('username',TRUE),
            'password' => md5($this->input->post('password',TRUE)),
            'level' => $this->input->post('level',TRUE),
            'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
            'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
            'alamat' => $this->input->post('alamat',TRUE),
            'no_telp' => $this->input->post('no_telp',TRUE),
            'foto' => "pp.jpg",
        );
    
            $this->m_pelanggan->insert($data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Tambahkan');
                window.location = '<?php echo base_url('pelanggan'); ?>'
            </script>
            <?php
        }
    
    }
    //untuk menampilkan data pada form edit
    public function update($id) 
    {
         //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        $row = $this->m_pelanggan->get_by_id($id);
        //menampilkan data ke dalam form
        if ($row) {
            $data = array(
            'button' => 'Update',
            'action' => site_url('pelanggan/update_action'),
            'id_user' => set_value('id_user', $row->id_user),
            'email' => set_value('email', $row->email),
            'nama' => set_value('nama', $row->nama),
            'username' => set_value('username', $row->username),
            'password' => set_value('password', $row->password),
            'level' => set_value('level', $row->level),
            'jenis_kelamin' => set_value('jenis_kelamin', $row->jenis_kelamin),
            'tgl_lahir' => set_value('tgl_lahir', $row->tgl_lahir),
            'alamat' => set_value('alamat', $row->alamat),
            'no_telp' => set_value('no_telp', $row->no_telp),

        );
            //menampilkan form edit data
            $this->load->view('v_pelanggan1', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('user'));
        }
    }
    //fungsi update data ke database
    public function update_action() 
    {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["foto"]["name"])) {  
        $data = array(
        'nama' => $this->input->post('nama',TRUE),
        'email' => $this->input->post('email',TRUE),
		'username' => $this->input->post('username',TRUE),
        'password' => $this->input->post('password',TRUE),
        'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
        'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
        'alamat' => $this->input->post('alamat',TRUE),
        'no_telp' => $this->input->post('no_telp',TRUE),
		'level' => $this->input->post('level',TRUE),
	    );

            $this->m_pelanggan->update($this->input->post('id_user', TRUE), $data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('pelanggan'); ?>'
            </script>
            <?php

        //jika gambar diinput oleh user
        } else {

            $nmfile = "user_".time();
            $config['upload_path'] = './image/user';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('foto');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
            //masukkan data ke database
            $data = array(
                'nama' => $this->input->post('nama',TRUE),
                'email' => $this->input->post('email',TRUE),
                'username' => $this->input->post('username',TRUE),
                'password' => $this->input->post('password',TRUE),
                'level' => $this->input->post('level',TRUE),
                'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
                'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
                'alamat' => $this->input->post('alamat',TRUE),
                'no_telp' => $this->input->post('no_telp',TRUE),
                'foto' => $dfile,
                );
                
            $this->m_pelanggan->update($this->input->post('id_user', TRUE), $data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('pelanggan'); ?>'
            </script>
            <?php

        }
    
}
    //fungsi delete data database
    public function delete($id) 
    {
        $row = $this->m_pelanggan->get_by_id($id);

        if ($row) {
            $this->m_pelanggan->delete($id);
            ?>
            <script type="text/javascript">
                confirm('apakah anda akan menghapus data?');
                window.location = '<?php echo base_url('pelanggan'); ?>'
            </script>
            <?php
        }
    }

    
}
    ?>