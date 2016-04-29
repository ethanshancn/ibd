<?php
/**
 * Login.php
 * User: Ethan
 * Time: 2016/4/28 16:37
 */
class Login extends CI_Controller
{
    public function index()
    {
        $this->load->model('user');
        $allUser = $this->user->getAllUser();

        $this->load->view('header');
        $this->load->view('Login/login',array('allUser'=>$allUser));
        $this->load->view('footer');
    }
}