<?php

class users extends DB{
    public $sql;
    function isLogin($username,$password){
        $sql = "SELECT * FROM `users` where `username` = '$username' and `password` = '$password'";
        if(mysqli_num_rows($this->db_query($sql)) > 0){
            return true;
        }
        return false;
    }

    function done_Login(){
        if(isset($_SESSION['username']) && isset($_SESSION['password'])){
            $username = $_SESSION['username'];
            $password = $_SESSION['password'];
            $sql = "SELECT * FROM `users` where `username` = '$username' and `password` = '$password'";
            if(mysqli_num_rows($this->db_query($sql)) > 0){
                return true;
            }
        }
        return false;
    }

    function get_role(){    
        if(isset($_SESSION['username']) && isset($_SESSION['password'])){
            $username = $_SESSION['username'];
            $password = $_SESSION['password'];
            $sql = "SELECT * FROM `users` where `username` = '$username' and `password` = '$password'";
            $user = $this->db_fetch_row($sql);
            return $user['role'];
        }     
        return false;
    }

}

?>