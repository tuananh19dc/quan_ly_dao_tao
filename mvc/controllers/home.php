<?php

class home extends controller
{
    public function __construct()
    {
        $model = $this->Model('users');
        if ($model->get_role() != 'hlv') {
            $this->redirectUrl('');
        }
    }
    public function show()
    {
        $_SESSION['select'] = '1';
        $model = $this->Model('model');
        isset($_GET['search']) ? $search = $_GET['search'] : $search = '';
        // !empty($search)?$where = "where `ho_ten` like '%$search%' AND `qua_vong` = '0'":$where='';
        $users = $model->phan_trang('nhanvien', 5, $search);
        $this->View('danh_sach_nguoi_dang_ky', [
            'users' => $users,
            'search' => $search
        ]);
    }


    public function done($id)
    {
        $model = $this->Model('model');

        if (mysqli_num_rows($model->db_query("SELECT * FROM nhanvien where id = '$id'")) > 0) {
            $model->db_update("nhanvien", ['qua_vong' => '1'], "id='$id'");
            $name = $model->db_fetch_row("SELECT * FROM nhanvien where id = '$id'")['ho_ten'];
            $_SESSION['qua_vong'] = "Xét duyệt $name thành công !!!";
        } else {
            $_SESSION['qua_vong'] = "Xét Duyệt Thất Công !!!";
        }
        $this->redirectUrl('home');
    }
    public function undone($id)
    {
        $model = $this->Model('model');

        if (mysqli_num_rows($model->db_query("SELECT * FROM nhanvien where id = '$id'")) > 0) {
            $model->db_update("nhanvien", ['qua_vong' => '0'], "id='$id'");
            $name = $model->db_fetch_row("SELECT * FROM nhanvien where id = '$id'")['ho_ten'];
            $_SESSION['qua_vong'] = "Gỡ bỏ $name thành công !!!";
        } else {
            $_SESSION['qua_vong'] = "Gỡ bỏ Thất Công !!!";
        }
        $this->redirectUrl('home/interns');
    }

    public function interns()
    {

        $_SESSION['select'] = '2';
        $model = $this->Model('model');
        isset($_GET['search']) ? $search = $_GET['search'] : $search = '';
        !empty($search) ? $where = "where `ho_ten` like '%$search%' AND `qua_vong` = '1' " : $where = '';
        $users = $model->phan_trang_interns('nhanvien', 5, $where);
        $this->View('interns', [
            'users' => $users,
            'search' => $search
        ]);
    }

    public function info($id)
    {
        $model = $this->Model('model');

        if (mysqli_num_rows($model->db_query("SELECT * FROM nhanvien where id = '$id'")) > 0) {
            $users = $model->db_fetch_row("SELECT * FROM nhanvien where id = '$id'");
            $this->View('info', [
                'users' => $users,

            ]);
        } else {
            $this->redirectUrl('home/interns');
        }
    }



    public function course()
    {
        isset($_GET['id_course']) ? $id_course = $_GET['id_course'] : $id_course = 1;
        $_SESSION['select'] = '3';
        $model = $this->Model('model');
        // isset($_GET['search'])?$search = $_GET['search']:$search = '';
        //     $users =$model->phan_trang('nhanvien',5,$search);            
        $category = $model->db_fetch_array("SELECT * FROM daotao");
        $cats = $model->db_fetch_array("SELECT * FROM chuongtrinhdaotao where id_dm = '$id_course'");
        $this->View('course', [
            'cat' => $category,
            'cats' => $cats
        ]);
    }

    public function course_detail($id)
    {
        
        $model = $this->Model('model');
        $List_cmt = $model->db_fetch_array("SELECT nv.ho_ten,nv.hinh_anh,nvdg.danh_gia,nvdg.sao from nhan_vien_danh_gia nvdg, nhanvien nv,chuongtrinhdaotao ct where nv.id = nvdg.id_nv and ct.id=nvdg.id_kh and ct.id='$id' ");
        $course = $model->db_fetch_row("SELECT * FROM chuongtrinhdaotao where id='$id'");
        $list_users = $model->phan_trang_course('nhanvien', 8, $id);
        $this->View('course_detail', [
            'course' => $course,
            'list_cmt' => $List_cmt,
            'list_users' => $list_users
        ]);
    }


    public function updateCourse($id)
    {
        $model = $this->Model('model');
        $data = [];
        $target_file = 'public/assets/img/uploads/' . $_FILES['file']['name'];
        if (isset($_POST['btn-update'])) {
            $data = [
                'ten_kh' => $_POST['ten_kh'],
                'doi_tuong_dt' => $_POST['doi_tuong_dt'],
                'noi_dung' => $_POST['noi_dung'],
                'ngaybd' => $_POST['ngaybd'],
                'ngaykt' => $_POST['ngaykt'],
            ];
            if (isset($_FILES['file']) && !empty($_FILES['file']['name'])) {
                $data['hinh_anh'] = $_FILES['file']['name'];
            }else $data['hinh_anh'] = $_POST['name-file'];
            move_uploaded_file($_FILES["file"]["tmp_name"], $target_file);
            $model->db_update('chuongtrinhdaotao', $data, "id='$id'");
            $_SESSION['update'] = "Cập nhật thành công !!!";
        }
        $this->redirectUrl("home/course_detail/$id");
    }

    public function course_add()
    {
        $model = $this->Model('model');
        $er = [];
        $course = [];
        $category = $model->db_fetch_array("SELECT * FROM daotao");
        if (isset($_POST['btn-add'])) {
            $course['id_dm'] = $_POST['id_dm'];

            if (empty($_POST['ten_kh'])) {
                $er['ten_kh'] = 'Tên khóa học không được để trống';
            } else {
                $course['ten_kh'] = $_POST['ten_kh'];
            }

            if (empty($_POST['doi_tuong_dt'])) {
                $er['doi_tuong_dt'] = 'Đối tượng đào tạo không được để trống';
            } else {
                $course['doi_tuong_dt'] = $_POST['doi_tuong_dt'];
            }

            if (empty($_POST['noi_dung'])) {
                $er['noi_dung'] = 'Nội dung không được để trống';
            } else {
                $course['noi_dung'] = $_POST['noi_dung'];
            }

            $target_file = 'public/assets/img/uploads/' . $_FILES['file']['name'];
            if (isset($_FILES['file'])) {
                $course['hinh_anh'] = $_FILES['file']['name'];
            }
            move_uploaded_file($_FILES["file"]["tmp_name"], $target_file);

            if (empty($_POST['ngaybd'])) {
                $er['ngaybd'] = 'Ngày bắt đầu không được để trống';
            } else {
                $course['ngaybd'] = $_POST['ngaybd'];
            }

            if (empty($_POST['ngaykt'])) {
                $er['ngaykt'] = 'Ngày kết thúc không được để trống';
            } else {
                $course['ngaykt'] = $_POST['ngaykt'];
            }


            if (empty($er)) {
                $model->db_insert('chuongtrinhdaotao', $course);
            }

            $_SESSION['add'] = "Thêm mới thành công !!!";
        }


        $this->View('course_add', [
            'cat' => $category,
            'course' => $course,
            'error' => $er,
        ]);
    }

    function course_delete($id){
        $model = $this->Model('model');
    
        if($model->db_num_rows("SELECT * FROM chuongtrinhdaotao where id = '$id'") > 0){
            $model->db_delete('chuongtrinhdaotao',"id = '$id'");
            $_SESSION['update'] = "Xóa khóa học thành công !!!";
            
        }
        $this->redirectUrl('home/course');
    }




}
