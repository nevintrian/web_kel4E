<?php
class Barang extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_barang');
        $this->load->library('pagination');
        $this->load->library('upload'); 
		$this->load->helper('form'); 
    }
    
    //fungsi menampilkan data barang dan halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //konfigurasi url saat klik halaman
        $q = urldecode($this->input->get('q', TRUE));
        $per_page = intval($this->input->get('per_page'));
        if ($q <> '') {
            $config['base_url'] = base_url() . 'barang/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'barang/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'barang';
            $config['first_url'] = base_url() . 'barang';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_barang->total_rows($q);
        $barang = $this->m_barang->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'barang_data' => $barang,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        //menampilkan view barang
        $this->load->view('v_barang', $data);

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
        'action' => site_url('barang/create_action'),
	    'id_barang' => set_value('id_barang'),
	    'nama_barang' => set_value('nama_barang'),
	    'harga' => set_value('harga'),
        'stok' => set_value('stok'),
        'jenis' => set_value('jenis'),
        'merk' => set_value('merk'),
	    'id_supplier' => set_value('id_supplier'),
       
    );  
        //menampilkan view tambah barang
        $this->load->view('v_barang1', $data);
    }

    //fungsi untuk insert ke database
    public function create_action() 
    {
        //insert dan konfigurasi gambar
        $nmfile = "barang_".time();
        $config['upload_path'] = './image/barang';
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = '20000';
        $config['file_name'] = $nmfile;
        $this->load->library('upload');
        $this->upload->initialize($config);
        $this->upload->do_upload('foto_barang');
        $result1 = $this->upload->data();
        $result = array('gambar'=>$result1);
        $dfile = $result['gambar']['file_name'];

        //memasukkan data ke database
        $data = array(
		'nama_barang' => $this->input->post('nama_barang',TRUE),
		'harga' => $this->input->post('harga',TRUE),
        'stok' => $this->input->post('stok',TRUE),
        'jenis' => $this->input->post('jenis',TRUE),
        'merk' => $this->input->post('merk',TRUE),
        'id_supplier' => $this->input->post('id_supplier',TRUE),
		'foto_barang' => $dfile,
	    );

        $this->m_barang->insert($data);
        $this->session->set_flashdata('message', 'Create Record Success');
        redirect(site_url('barang'));
        
    }
    
    //untuk menampilkan data pada form edit
    public function update($id) 
    {
         //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        $row = $this->m_barang->get_by_id($id);
        //menampilkan data ke dalam form
        if ($row) {
            $data = array(
            'button' => 'Update',
            'action' => site_url('barang/update_action'),
            'id_barang' => set_value('id_barang', $row->id_barang),
            'nama_barang' => set_value('nama_barang', $row->nama_barang),
            'harga' => set_value('harga', $row->harga),
            'stok' => set_value('stok', $row->stok),
            'jenis' => set_value('jenis', $row->jenis),
            'merk' => set_value('merk', $row->merk),
            'id_supplier' => set_value('id_supplier', $row->id_supplier),
            'konten' => 'barang/barang_form',
            'judul' => 'Data Barang',
            );
            //menampilkan form edit data
            $this->load->view('v_barang1', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('barang'));
            }
        }
    //fungsi update data ke database
    public function update_action() 
    {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["foto_barang"]["name"])) {    
            $data = array(
            'nama_barang' => $this->input->post('nama_barang',TRUE),
            'harga' => $this->input->post('harga',TRUE),
            'stok' => $this->input->post('stok',TRUE),
            'jenis' => $this->input->post('jenis',TRUE),
            'merk' => $this->input->post('merk',TRUE),
            'id_supplier' => $this->input->post('id_supplier',TRUE),
            );
            $this->m_barang->update($this->input->post('id_barang', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('barang'));
        //jika gambar diinput oleh user
        } else {
            $nmfile = "barang_".time();
            $config['upload_path'] = './image/barang';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('foto_barang');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
            //masukkan data ke database
            $data = array(
            'nama_barang' => $this->input->post('nama_barang',TRUE),
            'harga' => $this->input->post('harga',TRUE),
            'stok' => $this->input->post('stok',TRUE),
            'jenis' => $this->input->post('jenis',TRUE),
            'merk' => $this->input->post('merk',TRUE),
            'id_supplier' => $this->input->post('id_supplier',TRUE),
            'foto_barang' => $dfile,
            );

        $this->m_barang->update($this->input->post('id_barang', TRUE), $data);
        $this->session->set_flashdata('message', 'Update Record Success');
        redirect(site_url('barang'));
        }

           
    }
    //fungsi delete data database
    public function delete($id) 
{
    $row = $this->m_barang->get_by_id($id);

    if ($row) {
        $this->m_barang->delete($id);
        $this->session->set_flashdata('message', 'Delete Record Success');
    redirect(site_url('barang'));
    } else {
        $this->session->set_flashdata('message', 'Record Not Found');
        redirect(site_url('barang'));
    }
}
    
}
    ?>


