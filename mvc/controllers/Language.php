<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Language extends Admin_Controller {
/*
| -----------------------------------------------------
| PRODUCT NAME: 	lESSON
| -----------------------------------------------------
| AUTHOR:			ANTHONCODE
| -----------------------------------------------------
| EMAIL:			info@anthoncode.com
| -----------------------------------------------------
| COPYRIGHT:		RESERVED BY ANTHONCODE
| -----------------------------------------------------
| WEBSITE:			http://anthoncode.com
| -----------------------------------------------------
*/
	function __construct() {
		parent::__construct();
		$this->load->helper('language');
	}

	public function index($lang) {
		if($this->data['siteinfos']->language_status == 0) {
			$data = array('lang' => $lang);
			$this->session->set_userdata($data);
			redirect($_SERVER['HTTP_REFERER']);
		} else {
			$this->session->set_flashdata('error', $this->lang->line('language_message'));
			redirect($_SERVER['HTTP_REFERER']);
		}
	}

}

/* End of file language.php */
/* Location: .//D/xampp/htdocs/school/mvc/controllers/language.php */