<?php

class model extends DB{

    public function phan_trang($table,$num_of_page=0,$search = ''){
        isset($_GET['page'])?$current_page=$_GET['page']:$current_page=1; 
        $total = mysqli_num_rows(mysqli_query($this->conn,"SELECT * FROM nhanvien where `ho_ten` like '%$search%' AND `qua_vong` = '0'"));
        $num_page = ceil($total/$num_of_page);
        $start = ($current_page - 1) * $num_of_page;
        $sql['num_page'] = $num_page;
        $sql['current_page'] = $current_page;
        $sql['list'] = $this->db_fetch_array("SELECT * FROM nhanvien where `ho_ten` like '%$search%' AND `qua_vong` = '0' LIMIT $start , $num_of_page");
        return $sql;
    }

    public function phan_trang_interns($table,$num_of_page=0,$search = ''){
        isset($_GET['page'])?$current_page=$_GET['page']:$current_page=1; 
        $total = mysqli_num_rows(mysqli_query($this->conn,"SELECT * FROM nhanvien where `ho_ten` like '%$search%' AND `qua_vong` = '1'"));
        $num_page = ceil($total/$num_of_page);
        $start = ($current_page - 1) * $num_of_page;
        $sql['num_page'] = $num_page;
        $sql['current_page'] = $current_page;
        $sql['list'] = $this->db_fetch_array("SELECT * FROM nhanvien where `ho_ten` like '%$search%' AND `qua_vong` = '1' LIMIT $start , $num_of_page");
        return $sql;
    }
    
    public function phan_trang_course($table,$num_of_page=0,$id = ''){
        isset($_GET['page'])?$current_page=$_GET['page']:$current_page=1; 
        $total = mysqli_num_rows(mysqli_query($this->conn,"SELECT nv.id,nv.ho_ten,nv.hinh_anh,nvdg.danh_gia,nvdg.sao from nhan_vien_danh_gia nvdg, nhanvien nv,chuongtrinhdaotao ct where nv.id = nvdg.id_nv and ct.id=nvdg.id_kh and ct.id='$id'"));
        $num_page = ceil($total/$num_of_page);
        $start = ($current_page - 1) * $num_of_page;
        $sql['num_page'] = $num_page;
        $sql['current_page'] = $current_page;
        $sql['list'] = $this->db_fetch_array("SELECT nv.id,nv.ho_ten,nv.gioi_tinh,nv.gmail from nhan_vien_danh_gia nvdg, nhanvien nv,chuongtrinhdaotao ct where nv.id = nvdg.id_nv and ct.id=nvdg.id_kh and ct.id='$id'");
        return $sql;
    }

    function check_unique($table,$fill,$value){
        $sql = "select * from $table where $fill = '$value'";
        if(mysqli_num_rows(mysqli_query($this->conn,$sql)) > 0){
            return true;
        }
        return false;
    }
    function check_phone($table,$id,$fill,$value){
        $sql = "select * from $table where NOT id = $id and $fill = '$value'";
        if(mysqli_num_rows(mysqli_query($this->conn,$sql)) > 0){
            return true;
        }
        return false;
    }

    
}
