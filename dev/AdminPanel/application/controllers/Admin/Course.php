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
    public function createCourse()
    {

        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->load->model('Admin/Departmentm');
            $this->data['departmentName'] = $this->Departmentm->gellDepartmentName();
            $this->load->view('Admin/newCourse', $this->data);
        } else {
            redirect('Admin/Login');
        }
    }


    /* this insert course */
    public function insertCourse()
    {
        $this->load->library('form_validation');
        if ($this->session->userdata('type') == USER_TYPE[0]) {

            if (!$this->form_validation->run('createCourse')) {

                $this->load->model('Admin/Departmentm');
                $this->data['departmentName'] = $this->Departmentm->gellDepartmentName();
                $this->load->view('Admin/newCourse', $this->data);

            }
            else {
            $this->data['error'] =$this->Coursem->insertCourse();
            if (empty($this->data['error'])) {

                $this->session->set_flashdata('successMessage','Course Created Successfully');
                redirect('Admin/Course/manageCourse');


            }
            else
            {
                $this->session->set_flashdata('errorMessage','Some thing Went Wrong !! Please Try Again!!');
                redirect('Admin/Course/createCourse');

            }
            }
        } else {
            redirect('Admin/Login');
        }
    }

    //this will show manage course
    public function manageCourse()
    {

        if ($this->session->userdata('type') == USER_TYPE[0]) {
            $this->data['coursedata'] = $this->Coursem->getCourseData();
            $this->load->view('Admin/manageCourse', $this->data);
        } else {
            redirect('Admin/Login');
        }
    }

    //this will show edited data
    public function showEditCourse($id)
    {

        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->load->model('Admin/Departmentm');
            $this->data['departmentName'] = $this->Departmentm->gellDepartmentName();
            $this->data['coursealldata'] = $this->Coursem->getCourseAllDataforEdit($id);
            $this->load->view('Admin/editCourse', $this->data);

        } else {
            redirect('Admin/Login');
        }

    }

    //this funtion will edit data
    public function editCourse($id)
    {
        $this->load->library('form_validation');
        if ($this->session->userdata('type') == USER_TYPE[0]) {

            if (!$this->form_validation->run('editCourse')) {

                $this->load->model('Admin/Departmentm');
                $this->data['departmentName'] = $this->Departmentm->gellDepartmentName();
                $this->data['coursealldata'] = $this->Coursem->getCourseAllDataforEdit($id);
                $this->load->view('Admin/editCourse', $this->data);

            }
            else {

                $this->data['error'] = $this->Coursem->updateCourseData($id);

                if (empty($this->data['error'])) {

                    $this->session->set_flashdata('successMessage','Course Updated Successfully');
                    redirect('Admin/Course/manageCourse');


                }
                else
                {
                    $this->session->set_flashdata('errorMessage','Some thing Went Wrong !! Please Try Again!!');
                    redirect('Admin/Course/editCourse/'.$id);

                }
            }
        } else {
            redirect('Admin/Login');
        }
    }

    //this function will show the image in edit
    public function showImageForEdit($id){

        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->data['courseImage'] = $this->Coursem->getImage($id);
            $this->load->view('Admin/showImage', $this->data);

        }
        else{
            redirect('Admin/Login');
        }
    }

    //this function will delete the image in edit
    public function deleteCourseImage($id){

        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->data['error'] = $this->Coursem->deleteCourseImage($id);
            if (empty($this->data['error'])) {

                $this->session->set_flashdata('successMessage','Course Image Deleted Successfully');
                redirect('Admin/Course/editCourse/'.$id);

            }
            else
            {
                $this->session->set_flashdata('errorMessage','Some thing Went Wrong !! Please Try Again!!');
                redirect('Admin/Course/editCourse/'.$id);

            }

        }
        else{
            redirect('Admin/Login');
        }
    }

    //this will delete course
    public function deleteCourse($courseId)
    {
        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->data['coursedata'] = $this->Coursem->checkParentId($courseId);


            $name = array();
            $coursedata = $this->data['coursedata'];
            if (empty($coursedata)) {
                $this->Coursem->deleteCoursebyId($courseId);

                $this->session->set_flashdata('successMessage','Course Deleted Successfully');
                redirect('Admin/Course/manageCourse');

            }
            else {


                for ($i = 0; $i < count($coursedata); $i++) {
                    array_push($name, $coursedata[$i]);
                }
                ?>
                <script type='text/javascript'>
                    var x =<?php echo json_encode($name) ?>;
                    alert('Please Delete ( ' + x + ' ) First');
                </script>

                <?php
                echo "<script>
                    
                    window.location.href= '" . base_url() . "Admin/Course/manageCourse';
                    </script>";
            }
        }

    }

    /* --------- Course Title check from newCoruse -------------------*/
    public function CourseCheckFormNewCourse()
    {
        $courseTitle = $this->input->post("name");
        $department = $this->input->post("department");



        try
        {
            $this->data['checkCourseTitle'] = $this->Coursem->checkUniqueCourseTitle($courseTitle,$department);

            if (empty($this->data['checkCourseTitle'])){

                return true;
            }
            else{
                $this->form_validation->set_message('CourseCheckFormNewCourse', 'Course Allready Existed Under This Department');
                return false;
            }
        }
        catch (Exception $e){

            $this->form_validation->set_message('CourseCheckFormNewCourse', 'Some thing Went Wrong !! Please Try Again!!');
            return false;
        }


    }

/* --------- Course Title check from editCoruse -------------------*/
    public function CourseCheckFormEditCourse()
    {
        $courseTitle = $this->input->post("name");
        $department = $this->input->post("department");
        $id=$this->uri->segment(4);


        try
        {
            $this->data['checkCourseTitle'] = $this->Coursem->checkUniqueCourse($courseTitle,$department,$id);

            if (empty($this->data['checkCourseTitle'])){

                return true;
            }
            else{
                $this->form_validation->set_message('CourseCheckFormEditCourse', 'Course Allready Existed Under This Department');
                return false;
            }
        }
        catch (Exception $e){

            $this->form_validation->set_message('CourseCheckFormEditCourse', 'Some thing Went Wrong !! Please Try Again!!');
            return false;
        }


    }
    /* -------------------------------Image validation-------------------------*/
    public function val_img_check()
    {
        $image = $_FILES["image"]["name"];
        if ($image != null) {
            $this->load->library('upload');
            $config['upload_path'] = "images/validation_Image(dump)/";
            $config['allowed_types'] = 'jpg|png|jpeg|gif';

            $config['overwrite'] = TRUE;
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('image')) {
                $this->form_validation->set_message('val_img_check', $this->upload->display_errors());
                return false;
            } else {
                unlink(FCPATH."images/validation_Image(dump)/".$image);
                return true;
            }
        }
    }
}