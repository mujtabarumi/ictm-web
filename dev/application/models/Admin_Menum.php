<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Admin_Menum extends CI_Model
{
    public function CreateNewMenu()
    {
        $menuTitle = $this->input->post("menuTitle");
        $menuType = $this->input->post("menuType");
        $menuId = $this->input->post("menuId");
        $pageId = $this->input->post("pageId");
        $menuStatus = $this->input->post("menuStatus");
        if ($menuId == "New Menu")
        {
            $menuId =null;
        }
        if ($pageId == "Select Page")
        {
            $pageId =null;
        }

        $data = array(
            'menuName' => $menuTitle,
            'menuType' => $menuType,
            'parentId' => $menuId,
            'pageId' => $pageId,
            'menuStatus' => $menuStatus,


        );

        $this->db->insert('ictmmenu', $data);
    }
    public function getMenuName($menuType)
    {
        $this->db->select('menuId, menuName');
        $this->db->where('menuType', $menuType);
        $query = $this->db->get('ictmmenu');
        return $query->result();
    }

    public function getAllforManageMenu()
    {
//        $this->db->select('m.*,p.pageTitle');
//        $this->db->from('ictmmenu m');
//        $this->db->join('ictmpage p', 'p.pageId = m.pageId');
//        $query = $this->db->get();
//        return $query->result();

        $query = $this->db->get('ictmmenu');
        return $query->result();
    }

}