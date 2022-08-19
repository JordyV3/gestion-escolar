<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Test extends CI_Controller {
// class Test extends CI_Controller {
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
		if(config_item('demo') == FALSE || ENVIRONMENT == 'production') {
			redirect('dashboard/index');
		}
	}

	public function index() {
		dump(getAllSelectUser());
	}
}
