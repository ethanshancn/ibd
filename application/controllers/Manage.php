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
        $displayData = array();
        $this->load->model('education');
        $displayData['allEdu'] = $this->education->getAllEducation();


        $this->load->view('header');
        $this->load->view('Manage/addDetail',$displayData);
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