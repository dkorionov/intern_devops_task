<?php


class User
{
    private $connect;
    private $table_name = 'users';
    protected $fill_table = ['id', 'email', 'username', 'role', 'created', 'updated'];

    public function __construct($connect)
    {
        $this->connect = $connect;
    }

    function read(){
        $query = "SELECT " .  implode(', ', $this->fill_table) . " FROM " . $this->table_name . ";";
        return mysqli_query($this->connect, $query);
    }
}