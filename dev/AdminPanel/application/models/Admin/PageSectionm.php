<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class PageSectionm extends CI_Model
{
    //this will insert page section data
    public function insertPageSection()
    {

        $pageId = $this->input->post("pageId");
        extract($_POST);


        for ($i = 0; $i < count($textbox); $i++) {

            $data = array(
                'pageId' => $pageId,
                'pageSectionTitle' => $textbox[$i],
                'pageSectionContent' => $text[$i],
                'pageSectionStatus' => $status[$i],
                'insertedBy'=>$this->session->userdata('userEmail'),
                'insertedDate'=>date("Y-m-d H:i:s"),


            );
            $this->security->xss_clean($data,true);
            $error= $this->db->insert('ictmpagesection', $data);
        }
        if (empty($error))
        {
            return $this->db->error();
        }
        else
        {
            return $error=null;
        }
    }

    //this will upadate page section data
    public function updatePagaSectionData($id){

        $title = $this->input->post("textbox");
        $content = $this->input->post("text");
        $status = $this->input->post("status");


        $data = array(
            'pageSectionTitle' => $title,
            'pageSectionContent' => $content,
            'pageSectionStatus' => $status,
            'lastModifiedBy'=>$this->session->userdata('userEmail'),
            'lastModifiedDate'=>date("Y-m-d H:i:s")
        );
        $this->security->xss_clean($data,true);
        $this->db->where('pageSectionId', $id);
        $error= $this->db->update('ictmpagesection', $data);
        if (empty($error))
        {
            return $this->db->error();
        }
        else
        {
            return $error=null;
        }

    }

    //this will  return page section data search by pageID
    public function get_pageSecdata($id){

        $this->db->select('pageSectionId,pageId,pageSectionTitle,pageSectionStatus,insertedBy,lastModifiedBy,lastModifiedDate');
        $this->db->from('ictmpagesection');
        $this->db->where('pageId', $id);
        $this->db->order_by("pageSectionId", "desc");
        $query = $this->db->get();
        return $query->result();

    }

    //this will  return page section data search by pageSectionID
    public function get_pageSecdataBySecId($id)
    {
        $this->db->where('pageSectionId', $id);
        $query = $this->db->get('ictmpagesection');
        return $query->result();


    }
    //this will delete page section data
    public function deletePageSectionbyId($pageSectionId)
    {
        $this->db->where('pageSectionId',$pageSectionId);
        $this->db->delete('ictmpagesection');


    }

}
