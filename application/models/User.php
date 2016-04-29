<?php
/**
 * User.php
 * User: Ethan
 * Time: 2016/4/28 16:52
 */
class User extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getAllUser()
    {
        $query = $this->db->query('SELECT * FROM `user`');
        return $query;
    }

}