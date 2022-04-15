<?php 

class admin extends controller{

    public function __construct()
    {
        $model = $this->Model('users');
        if($model->get_role() != 'admin'){
            $this->redirectUrl('');
        }
    }
    public $arr = [];
    public function show(){
        $_SESSION['select'] = '1';  
        $model = $this->Model('model');
        isset($_GET['search'])?$search = $_GET['search']:$search = '';
        // !empty($search)?$where = "where `ho_ten` like '%$search%' AND `qua_vong` = '0'":$where='';
            $users =$model->phan_trang_interns('nhanvien',5,$search);            
            $this->View('admin/quan_ly_nhan_vien',[
                'users' => $users,
                'search' => $search
            ]);
    }

    public function info($id)
    {
        $model = $this->Model('model');
        
        if(mysqli_num_rows($model->db_query("SELECT * FROM nhanvien where id = '$id'")) > 0){
            $users = $model->db_fetch_row("SELECT * FROM nhanvien where id = '$id'");
            $this->View('admin/info',[
                'users' => $users
            ]);

        }else{
            $this->redirectUrl('admin');      
        }
    }

    public function add(){
        $_SESSION['select'] = '2';      
        $this->View('admin/add');
    }

    public function add_store(){
        $model = $this->Model('model');
        if (isset($_POST['btn-add'])) {
            
            if (empty($_POST['ho_ten'])) {
                $_SESSION['error']['ho_ten'] = "Họ Tên không được để trống !!!";
            }else $this->arr['ho_ten'] = $_POST['ho_ten'];

            if (empty($_POST['tuoi'])) {
                $_SESSION['error']['tuoi'] = "Tuổi không được để trống !!!";
            } else {
                if (!preg_match("/^[0-9]{0,5}$/", $_POST['tuoi'])) {
                    $_SESSION['error']['tuoi'] = "Tuổi vừa nhập không đúng định dạng";
                }else $this->arr['tuoi'] = $_POST['tuoi'];
            }

            if (empty($_POST['gmail'])) {
                $_SESSION['error']['gmail'] = "Gmail không được để trống !!!";
            } else {
                if (!preg_match("/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/", $_POST['gmail'])) {
                    $_SESSION['error']['gmail'] = "Gmail vừa nhập không đúng định dạng";
                }else{
                    $sql = "select * from nhanvien where gmail = '".$_POST['gmail']."'";
                    if(mysqli_num_rows($model->db_query($sql)) > 0){
                        $_SESSION['error']['gmail'] = "Gmail vừa nhập đã tồn tại";
                    }else $this->arr['gmail'] = $_POST['gmail'];
                }
            }

            if (empty($_POST['sdt'])) {
                $_SESSION['error']['sdt'] = "Số điện thoại không được để trống !!!";
            } else {
                if (!preg_match("/^[0-9]{0,10}$/", $_POST['sdt'])) {
                    $_SESSION['error']['sdt'] = "Số Điện Thoại vừa nhập không đúng định dạng";
                }else{
                    $sql = "select * from nhanvien where sdt = '".$_POST['sdt']."'";
                    if(mysqli_num_rows($model->db_query($sql)) > 0){
                        $_SESSION['error']['sdt'] = "Số Điện Thoại vừa nhập đã tồn tại";
                    }else $this->arr['sdt'] = $_POST['sdt'];
                }
            }

            if (empty($_POST['dia_chi'])) {
                $_SESSION['error']['dia_chi'] = "Địa chỉ không được để trống !!!";
            }else $this->arr['dia_chi'] = $_POST['dia_chi'];

            if (empty($_POST['mo_ta'])) {
                $_SESSION['error']['mo_ta'] = "Mô Tả không được để trống !!!";
            }else $this->arr['mo_ta'] = $_POST['mo_ta'];
            if (empty($_POST['chuc_vu'])) {
                $_SESSION['error']['chuc_vu'] = "Chức Vụ không được để trống !!!";
            }else $this->arr['chuc_vu'] = $_POST['chuc_vu'];
            if (!preg_match("/^[0-9]{0,11}$/", $_POST['luong'])) {
                $_SESSION['error']['luong'] = "Tiền lương vừa nhập không đúng định dạng";
            }else $this->arr['luong'] = $_POST['luong'];
            $this->arr['gioi_tinh'] = $_POST['gioi_tinh'];
            $this->arr['hoc_van'] = $_POST['hoc_van'];
            $_SESSION['value'] = $this->arr;
            if(empty($_SESSION['error'])){
                $data = [
                    'ho_ten' => $_POST['ho_ten'],
                    'gmail' => $_POST['gmail'],
                    'tuoi' => $_POST['tuoi'],
                    'sdt' => $_POST['sdt'],
                    'dia_chi' => $_POST['dia_chi'],
                    'mo_ta' => $_POST['mo_ta'],
                    'chuc_vu' => $_POST['chuc_vu'],
                    'luong' => $_POST['luong'],
                    'hoc_van' => $_POST['hoc_van'],
                    'gioi_tinh' => $_POST['gioi_tinh'],
                    'qua_vong' => 1,
                ];
                $model->db_insert('nhanvien', $data);
                $_SESSION['mess'] = "Thêm mới nhân viên thành công";
                unset($_SESSION['value']);
            }else{
                $_SESSION['mess'] = "Thêm mới nhân viên thất bại";
            }
            
        }
        $this->redirectUrl('admin/add');
    }

    public function updateProfile($id){
        // print_r($_POST);
        $model = $this->Model('model');
        $user = $model->db_fetch_row("select * from nhanvien where nhanvien.id = '{$id}'");
        if (isset($_POST['btn-update'])) {
            
            if (empty($_POST['ho_ten'])) {
                $_SESSION['error']['ho_ten'] = "Họ Tên không được để trống !!!";
            }

            if (empty($_POST['tuoi'])) {
                $_SESSION['error']['tuoi'] = "Tuổi không được để trống !!!";
            } else {
                if (!preg_match("/^[0-9]{0,5}$/", $_POST['tuoi'])) {
                    $_SESSION['error']['tuoi'] = "Tuổi vừa nhập không đúng định dạng";
                }
            }

            if (empty($_POST['gmail'])) {
                $_SESSION['error']['gmail'] = "Gmail không được để trống !!!";
            } else {
                if (!preg_match("/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/", $_POST['gmail'])) {
                    $_SESSION['error']['gmail'] = "Gmail vừa nhập không đúng định dạng";
                }else{
                    $sql = "select * from nhanvien where NOT id = '$id' and gmail = '".$_POST['gmail']."'";
                    if(mysqli_num_rows($model->db_query($sql)) > 0){
                        $_SESSION['error']['gmail'] = "Gmail vừa nhập đã tồn tại";
                    }
                }
            }

            if (empty($_POST['sdt'])) {
                $_SESSION['error']['sdt'] = "Số điện thoại không được để trống !!!";
            } else {
                if (!preg_match("/^[0-9]{0,10}$/", $_POST['sdt'])) {
                    $_SESSION['error']['sdt'] = "Số Điện Thoại vừa nhập không đúng định dạng";
                }else{
                    $sql = "select * from nhanvien where NOT id = '$id' and sdt = '".$_POST['sdt']."'";
                    if(mysqli_num_rows($model->db_query($sql)) > 0){
                        $_SESSION['error']['sdt'] = "Số Điện Thoại vừa nhập đã tồn tại";
                    }
                }
            }

            if (empty($_POST['dia_chi'])) {
                $_SESSION['error']['dia_chi'] = "Địa chỉ không được để trống !!!";
            }

            if (empty($_POST['mo_ta'])) {
                $_SESSION['error']['mo_ta'] = "Mô Tả không được để trống !!!";
            }
            if (empty($_POST['chuc_vu'])) {
                $_SESSION['error']['chuc_vu'] = "Chức Vụ không được để trống !!!";
            }

            if (!preg_match("/^[0-9]{0,11}$/", $_POST['luong'])) {
                $_SESSION['error']['luong'] = "Tiền lương vừa nhập không đúng định dạng";
            }
            

            if(empty($_SESSION['error'])){
                $data = [
                    'tuoi' => $_POST['tuoi'],
                    'sdt' => $_POST['sdt'],
                    'dia_chi' => $_POST['dia_chi'],
                    'mo_ta' => $_POST['mo_ta'],
                    'chuc_vu' => $_POST['chuc_vu'],
                    'luong' => $_POST['luong'],
                    'hoc_van' => $_POST['hoc_van'],
                    'gioi_tinh' => $_POST['gioi_tinh'],
                ];
                $model->db_update('nhanvien', $data, "id='$id'");
                $_SESSION['mess'] = "Cập nhật thành công";
            }else{
                $_SESSION['mess'] = "Cập nhật thất bại";
            }
            $this->redirectUrl("admin/info/$id");
            
        }
    }

    public function delete($id){
        $model = $this->Model('model');
        $name = $model->db_fetch_row("select * from nhanvien where id = '$id'")['ho_ten'];
        $_SESSION['mess'] = "Đã xóa nhân viên <b>$name</b> thành công";
        $model->db_delete('nhanvien',"id = '$id'");
        $this->redirectUrl('admin');
    }


}

?>