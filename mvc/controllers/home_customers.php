<?php 

class home_nhanvien extends controller{

    public function show(){
        $_SESSION['select'] = '1';       
        $model = $this->Model('model');
        isset($_GET['search'])?$search = $_GET['search']:$search = '';
        // !empty($search)?$where = "where `ho_ten` like '%$search%' AND `qua_vong` = '0'":$where='';
            $users =$model->phan_trang('nhanvien',5,$search);            
            $this->View('danh_sach_nguoi_dang_ky',[
                'users' => $users,
                'search' => $search
            ]);
    }



    
}
?>