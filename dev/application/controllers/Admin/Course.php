<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Course extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Admin/Coursem');
    }

    public function index()
    {

    }

     /* this will show create course page*/
    public function createCourse(){

        if ($this->session->userdata('type') == Admin) {

            $this->load->view('Admin/newCourse');
        }
        else{
            redirect('Login');
        }
    }



    /* this insert course */
    public  function insertCourse(){

        if ($this->session->userdata('type') == Admin) {

            $this->Coursem->insertCourse();
            redirect('Admin/Course/createCourse');
        }
        else{
            redirect('Login');
        }
    }

    //this will show manage course
    public function manageCourse(){

        if ($this->session->userdata('type') == Admin) {

            $this->data['coursedata']= $this->Coursem->getCourseData();
            $this->load->view('Admin/manageCourse', $this->data);
        }
        else{
            redirect('Login');
        }
    }

    //this will show edited data
    public function  showEditCourse($id){

        if ($this->session->userdata('type') == Admin) {

            $this->data['coursealldata']= $this->Coursem->getCourseAllData($id);
            $this->load->view('Admin/editCourse', $this->data);
        }
        else{
            redirect('Login');
        }

    }

    public function editCourse($id){

        if ($this->session->userdata('type') == Admin) {

            $this->data['coursealldata']= $this->Coursem->updateCourseData($id);

            redirect('Admin/Course/manageCourse');
        }
        else{
            redirect('Login');
        }
    }


    /////////////////Course Section////////////////////

    //this will show course section
    public  function createCourseSec(){

        if ($this->session->userdata('type') == Admin) {

            $this->data['coursetitle']= $this->Coursem->getCourseTitle();
            $this->load->view('Admin/newCourseSection', $this->data);
        }
        else{
            redirect('Login');
        }


    }
    //this will insert ta course section data
    public  function insertCourseSec(){
        if ($this->session->userdata('type') == Admin) {

            $this->Coursem->insertCourseSec();
            redirect('Admin/Course/createCourseSec');
        }
        else{
            redirect('Login');
        }
    }
    //this will show manage course section
    public  function manageCourseSec(){
        $this->load->view('Admin/manageCourseSection');


    }
    //this will show Edit course section
    public  function showEditCourseSec(){

    }
    //this will edit course section
    public  function editCourseSec(){

    }
}