<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Department extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Menum');
        $this->load->model('Newsm');
        $this->load->model('Eventm');
        $this->load->model('Coursem');
        $this->load->model('CourseSectionm');
        $this->load->model('Departmentm');
        $this->load->model('CollegeInfom');
    }
    public function index()
    {
       // $this->load->view('department');
    }

    public function showDetails ($id) {

        $this->menu();
        $this->data['dDeteails'] = $this->Departmentm->getDepartmentDetails($id);
        $this->data['coursedata']=$this->Coursem->getCourseTitle();
        $this->load->view('department', $this->data);

    }
    public function menu(){
        $this->data['topmenu'] = $this->Menum->getTopMenu();
        $this->data['parentmenu'] = $this->Menum->getParentMenu();
        $this->data['mainmenu'] = $this->Menum->getMainMenu();
        $this->data['keyinfo'] = $this->Menum->getkeyInfoMenu();
        $this->data['quicklink'] = $this->Menum->getQuickLinksMenu();
        $this->data['implink'] = $this->Menum->getImportantLinkMenu();
        $this->data['bottom'] = $this->Menum->getBottomMenu();
        $this->data['contact'] = $this->CollegeInfom->getCollegeContact();

    }
}