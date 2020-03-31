<?php

class Model
{
    private $connect;

    public function __construct()
    {
        $this->connect = mysqli_connect('localhost', 'root', 'test_password', 'vagrant_test') or die("error");

        mysqli_set_charset($this->connect, 'utf8');
    }

    public function __destruct()
    {
        mysqli_close($this->connect);
    }

    public function getConnect(){
        return $this->connect;
    }
}