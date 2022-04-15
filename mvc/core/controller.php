<?php
class controller{
    public function Model($model){
        require_once "./mvc/models/$model.php";
        return new $model;
    }

    public function View($view,$data=[]){
        require_once "./mvc/views/$view.php";
    }

    public function redirectUrl($url){
        $arr = explode("/",trim($_SERVER['PHP_SELF']));
        header("location: "."http://".$_SERVER['HTTP_HOST']."/".$arr[1].'/'.$url);
    }

}



?>