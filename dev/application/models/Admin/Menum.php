<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Menum extends CI_Model
{
        /*----------- this creates a new Menu in database------------*/
    public function createNewMenu()             // for insert new menu into database
    {
        $menuTitle = $this->input->post("menuTitle");
        $menuType = $this->input->post("menuType");
        $parentId = $this->input->post("parentId");
        $pageId = $this->input->post("pageId");
        $menuStatus = $this->input->post("menuStatus");
        if ($parentId == "")
        {
            $menuId =null;
        }
        if ($pageId == "")
        {
            $pageId =null;
        }

        $data = array(
            'menuName' => $menuTitle,
            'menuType' => $menuType,
            'parentId' => $parentId,
            'pageId' => $pageId,
            'menuStatus' => $menuStatus,
            'insertedBy'=>$this->session->userdata('userEmail'),
            'insertedDate'=>date("Y-m-d H:i:s"),

        );
        $this->security->xss_clean($data);
        $error=$this->db->insert('ictmmenu', $data);

        if (empty($error))
        {
            return $this->db->error();
        }
        else
        {
            return $error=null;
        }

    }

            /*-----get Menu Name and id----------*/
    public function getMenuName($menuType)
    {
        $this->db->select('menuId, menuName');
        $this->db->where('menuType', $menuType);
        $query = $this->db->get('ictmmenu');
        return $query->result();
    }
            /*----------- check MenuTitle Uniqueness Per MenuType ----------------*/
    public function checkMenuTitleUniquePerMenuType($menuTitle,$menuType)
    {
        $this->db->select('menuName,menuType');
        $this->db->where('menuType',$menuType);
        $this->db->where('menuName',$menuTitle);
        $query = $this->db->get('ictmmenu');
        return $query->result();
    }
    /*----------- check MenuTitle Uniqueness Per MenuType ---- editMenu------------*/
    public function checkUniqueMenuTitle($menuTitle,$menuType,$id)
    {

        $this->db->select('menuName,menuType');
        $this->db->where('menuType',$menuType);
        $this->db->where('menuName',$menuTitle);
        $this->db->where('menuId !=', $id);
        $query = $this->db->get('ictmmenu');
        return $query->result();

    }


    /*---- get all menu for mangeMenuView -----*/
    public function getAllforManageMenu()
    {

        $this->db->select('m.menuId,m.menuName,m.menuType,m.menuStatus,m.insertedBy,m.lastModifiedBy,m.lastModifiedDate,menu.menuName as submenu,p.pageTitle');
        $this->db->from('ictmmenu m');
        $this->db->join('ictmmenu menu', 'm.parentId = menu.menuId','left');
        $this->db->join('ictmpage p', 'm.pageId = p.pageId','left');
        $query = $this->db->get();
        return $query->result();


    }

        /*-- get all information of the selected Menu ---*/
    public function getAllMenubyId($menuId)
    {

        $this->db->select('m.*,menu.menuName as submenu');
        $this->db->where('m.menuId', $menuId);
        $this->db->from('ictmmenu m');
        $this->db->join('ictmmenu menu', 'm.parentId = menu.menuId','left');

        $query = $this->db->get();
        return $query->result();

    }

        /*-------- edit menu by id  in database--------------*/
    public function editMenubyId($id)
    {
        $menuTitle = $this->input->post("menuTitle");
        $menuType = $this->input->post("menuType");
        $parentId = $this->input->post("parentId");
        $pageId = $this->input->post("pageId");
        $menuStatus = $this->input->post("menuStatus");

        if ($parentId == "")
        {
            $menuId =null;
        }
        if ($pageId == "")
        {
            $pageId =null;
        }


        $data = array(
            'menuName' => $menuTitle,
            'menuType' => $menuType,
            'parentId' => $parentId,
            'pageId' => $pageId,
            'menuStatus' => $menuStatus,
            'lastModifiedDate'=>date("Y-m-d H:i:s"),
            'lastModifiedBy'=>$this->session->userdata('userEmail')

        );

            $this->security->xss_clean($data);

                $this->db->where('menuId', $id);
                $error=$this->db->update('ictmmenu', $data);
                if (empty($error))
                {
                    return $this->db->error();
                }
                else
                {
                    return $error=null;
                }
    }

    /*---------delete menu if no Submenu-----------------*/
    public function deleteMenubyId($menuId) //delete menu if no Submenu
    {
        $this->db->select('menuName,');
        $this->db->where('parentId',$menuId);
        $this->db->from('ictmmenu');
        $query = $this->db->get();
        if (empty($query->result())){
            $this->db->where('menuId',$menuId);
            $this->db->delete('ictmmenu');
            return 0;
        }
        else{
            return $query->result();
        }
    }


}