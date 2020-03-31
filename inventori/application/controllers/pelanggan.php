<?php
class Pelanggan extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_pelanggan');
        $this->load->model('m_pelanggan');
        $this->load->library('pagination');
        $this->load->library('upload'); 
		$this->load->helper('form'); 
    }
    
    //fungsi menampilkan data pelanggan dan halaman
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
        $pelanggan = $this->m_pelanggan->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'pelanggan_data' => $pelanggan,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        //menampilkan view pelanggan
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
	    'id_pelanggan' => set_value('id_pelanggan'),
	    'nama_pelanggan' => set_value('nama_pelanggan'),
	    'alamat' => set_value('alamat'),
        'no_telp' => set_value('no_telp'),

       
    );  
        //menampilkan view tambah pelanggan
        $this->load->view('v_pelanggan1', $data);
    }

    //fungsi untuk insert ke database
    public function create_action() 
    {
        //insert dan konfigurasi gambar
        $nmfile = "pelanggan_".time();
        $config['upload_path'] = './image/barang';
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = '20000';
        $config['file_name'] = $nmfile;
        $this->load->library('upload');
        $this->upload->initialize($config);
        $this->upload->do_upload('foto_pelanggan');
        $result1 = $this->upload->data();
        $result = array('gambar'=>$result1);
        $dfile = $result['gambar']['file_name'];

        //memasukkan data ke database
        $data = array(
		'nama_pelanggan' => $this->input->post('nama_pelanggan',TRUE),
		'alamat' => $this->input->post('alamat',TRUE),
        'no_telp' => $this->input->post('no_telp',TRUE),

	    );

        $this->m_pelanggan->insert($data);
        $this->session->set_flashdata('message', 'Create Record Success');
        redirect(site_url('pelanggan'));
        
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
            'id_pelanggan' => set_value('id_pelanggan', $row->id_pelanggan),
            'nama_pelanggan' => set_value('nama_pelanggan', $row->nama_pelanggan),
            'alamat' => set_value('alamat', $row->alamat),
            'no_telp' => set_value('no_telp', $row->no_telp),

            'konten' => 'pelanggan/pelanggan_form',
            'judul' => 'Data pelanggan',
            );
            //menampilkan form edit data
            $this->load->view('v_pelanggan1', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('pelanggan'));
            }
        }
    //fungsi update data ke database
    public function update_action() 
    {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["foto_pelanggan"]["name"])) {    
            $data = array(
            'nama_pelanggan' => $this->input->post('nama_pelanggan',TRUE),
            'alamat' => $this->input->post('alamat',TRUE),
            'no_telp' => $this->input->post('no_telp',TRUE),

            );
            $this->m_pelanggan->update($this->input->post('id_pelanggan', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('pelanggan'));
        //jika gambar diinput oleh user
        } else {
            $nmfile = "pelanggan_".time();
            $config['upload_path'] = './image/pelanggan';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('foto_pelanggan');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
            //masukkan data ke database
            $data = array(
            'nama_pelanggan' => $this->input->post('nama_pelanggan',TRUE),
            'alamat' => $this->input->post('alamat',TRUE),
            'no_telp' => $this->input->post('no_telp',TRUE),

            );

        $this->m_pelanggan->update($this->input->post('id_pelanggan', TRUE), $data);
        $this->session->set_flashdata('message', 'Update Record Success');
        redirect(site_url('pelanggan'));
        }

           
    }
    //fungsi delete data database
    public function delete($id) 
{
    $row = $this->m_pelanggan->get_by_id($id);

    if ($row) {
        $this->m_pelanggan->delete($id);
        $this->session->set_flashdata('message', 'Delete Record Success');
    redirect(site_url('pelanggan'));
    } else {
        $this->session->set_flashdata('message', 'Record Not Found');
        redirect(site_url('pelanggan'));
    }
}
    
}
    ?>


