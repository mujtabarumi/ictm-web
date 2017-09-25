<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Album extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Admin/Albumm');
        $this->load->library("pagination");

    }

    /* this will show  create Album */
    public function newAlbum()
    {

        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->load->view('Admin/newAlbum');

        }
        else {

            redirect('Admin/Login');
        }
    }

    public function createNewAlbum() // for insert new Album into database
    {
        $this->load->library('form_validation');
        if ($this->session->userdata('type') == USER_TYPE[0]) {

            if (!$this->form_validation->run('createAlbum')) {

                $this->load->view('Admin/newMenu', $this->data);
            }
            else
            {

                $this->data['error'] =$this->Albumm->createNewAlbum();

                if (empty($this->data['error'])) {

                    $this->session->set_flashdata('successMessage','Album Created Successfully');
                    redirect('Admin/Album/manageAlbum');

                }
                else
                {
                    $this->session->set_flashdata('errorMessage','Some thing Went Wrong !! Please Try Again!!');
                    redirect('Admin/Album/newAlbum');

                }

            }
        }
        else{
            redirect('Admin/Login');
        }
    }
    /*---------for creating new Album ------end--------------- */

    /*---------for Manage Album -----------------------*/
    public function manageAlbum() // for manage Album view
    {
        if ($this->session->userdata('type') == USER_TYPE[0])
        {
            $config = array();
            $config["base_url"] = base_url() . "Admin/Album/manageAlbum";
            $config["total_rows"] = $this->Albumm->record_count();
            $config["per_page"] = 10;
            $config["uri_segment"] = 4;
            $choice = $config["total_rows"] / $config["per_page"];
            $config["num_links"] = round($choice);
            $this->pagination->initialize($config);
            $page = ($this->uri->segment(4)) ? $this->uri->segment(4) : 0;
            $this->data["Albums"] = $this->Albumm->getAllforManageAlbum($config["per_page"], $page);
            $this->data["links"] = $this->pagination->create_links();

            $this->load->view('Admin/manageAlbum',$this->data);
        }
        else{
            redirect('Admin/Login');
        }
    }

    // for edit Album view
    public function editAlbumView($albumId)
    {
        if ($this->session->userdata('type') == USER_TYPE[0]) {

            $this->data['edit_Album'] = $this->Albumm->getAllAlbumInfobyId($albumId);
            $this->load->view('Admin/editAlbum',$this->data);

        }
        else{
            redirect('Admin/Login');
        }
    }

    // for edit Album in database
    public function editAlbum($albumId)
    {
        $this->load->library('form_validation');
        if ($this->session->userdata('type') == USER_TYPE[0]) {

            if (!$this->form_validation->run('editAlbum')) {

                $this->data['edit_Album'] = $this->Albumm->getAllAlbumInfobyId($albumId);
                $this->load->view('Admin/editAlbum',$this->data);

            }
            else
            {

                $this->data['error'] = $this->Albumm->editAlbumbyId($albumId);
                if (empty($this->data['error'])) {

                    $this->session->set_flashdata('successMessage','Album Updated Successfully');
                    redirect('Admin/Album/manageAlbum');

                } else
                {
                    $this->session->set_flashdata('errorMessage','Some thing Went Wrong !! Please Try Again!!');
                    redirect('Admin/Album/editAlbum/'.$albumId);

                }
            }
        }

        else{
            redirect('Admin/Login');
        }
    }

    // delete Album if no photo
    public function deleteAlbum($albumId)
    {
        if ($this->session->userdata('type') == USER_TYPE[0]) {


            $albumName=$this->Albumm->deleteAlbumbyId($albumId);

            if ($albumName=='0'){
                $this->session->set_flashdata('successMessage','Album is Deleted Successfully');
                echo $albumName;

            }
            else if( $albumName=='1'){
                $this->session->set_flashdata('errorMessage','Album is not Empty!! Please Delete All The Photo of This Album First!!');
                echo $albumName;
            }
        }
        else{
            redirect('Admin/Login');
        }
    }
    /*---------for Manage Menu ----------end-------------*/
/*--------------- callback albumTitle_check-------------*/
    public function AlbumeditUniqueCheck()
    {
        $albumTitle = $this->input->post("albumTitle");
        $id=$this->uri->segment(4);


        try
        {
            $this->data['checkAlbumTitle'] = $this->Albumm->checkUniqueAlbumTitle($albumTitle,$id);

            if (empty($this->data['checkAlbumTitle'])){

                return true;
            }
            else{
                $this->form_validation->set_message('AlbumeditUniqueCheck', 'Album Title Allready Existed');
                return false;
            }
        }
        catch (Exception $e){

            $this->form_validation->set_message('AlbumeditUniqueCheck', 'Some thing Went Wrong !! Please Try Again!!');
            return false;
        }

    }
    /*------------ for callback albumTitle_check ----- end -------*/
}