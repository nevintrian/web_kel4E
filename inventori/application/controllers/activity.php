<?php
class Activity extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_activity');
        $this->load->model('m_activity');
        $this->load->library('pagination');
        $this->load->library('upload'); 
        $this->load->helper('form'); 
        $this->load->library('cetak_pdf');
    }
    
    //fungsi menampilkan data activity dan halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //konfigurasi url saat klik halaman
        $q = urldecode($this->input->get('q', TRUE));
        $per_page = intval($this->input->get('per_page'));
        if ($q <> '') {
            $config['base_url'] = base_url() . 'activity/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'activity/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'activity';
            $config['first_url'] = base_url() . 'activity';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_activity->total_rows($q);
        $activity = $this->m_activity->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'activity_data' => $activity,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        //menampilkan view activity
        $this->load->view('v_activity', $data);

    } 
    
    //fungsi delete data database
    public function delete($id) 
{
    $row = $this->m_activity->get_by_id($id);

    if ($row) {
        $this->m_activity->delete($id);
        redirect(site_url('activity'));
    }
}
    
}
    ?>


