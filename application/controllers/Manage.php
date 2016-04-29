<?php
/**
 * Manage.php
 * User: Ethan
 * Time: 2016/4/29 17:57
 */
class Manage extends CI_Controller
{
    public function addDetail()
    {
        /*$this->load->model('user');
        $allUser = $this->user->getAllUser();*/

        $this->load->view('header');
        //$this->load->view('Manage/addDetail',array('allUser'=>$allUser));
        $this->load->view('Manage/addDetail');
        $this->load->view('footer');
    }

    public function showList()
    {

        $this->load->view('header');
        $this->load->view('Manage/showList');
        $this->load->view('footer');
    }

    public function showDetail()
    {

        $this->load->view('header');
        $this->load->view('Manage/showDetail');
        $this->load->view('footer');
    }
}