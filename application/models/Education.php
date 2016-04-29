<?php
/**
 * Education.php
 * User: Ethan
 * Time: 2016/4/29 21:01
 */
class Education extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getAllEducation()
    {
        $query = $this->db->query('SELECT * FROM `education`');
        return $query;
    }

}