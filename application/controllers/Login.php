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
        
        $this->load->view('header');
        $this->load->view('Login/login');
        $this->load->view('footer');
    }
}