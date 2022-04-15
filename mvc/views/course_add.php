<?php include  './mvc/views/layout/header.php'; ?>

<div class="content">


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" style="text-transform: uppercase;">Thêm mới khóa học</h4>
                        <?php if (isset($_SESSION['add'])) {
                            echo "<span class='mes'>" . $_SESSION['add'] . "</span>";
                            unset($_SESSION['add']);
                        } ?>
                    </div>
                    <div class="card-body">
                        <form action="" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <label>Danh Mục Đào Tạo</label>
                                        <select id="dao-tao" class="form-control" name="id_dm">
                                            <?php
                                            foreach ($data['cat'] as $item) {
                                            ?>
                                                <option value="<?php echo $item['id']; ?>"><?php echo $item['ten_dm']; ?></option>
                                            <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <label>Tên khóa học</label>
                                        <input type="text" class="form-control" placeholder="Tên Khóa Học" name="ten_kh" value="<?php if (isset($data['course']['ten_kh'])) echo $data['course']['ten_kh'] ?>">
                                        <span class='color-red'><?php if (isset($data['error']['ten_kh'])) echo $data['error']['ten_kh']; ?></span>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Đối tượng đào tạo</label>
                                        <input type="text" value="<?php if (isset($data['course']['doi_tuong_dt']))  echo $data['course']['doi_tuong_dt'] ?>" name="doi_tuong_dt" class="form-control">
                                        <span class='color-red'><?php if (isset($data['error']['doi_tuong_dt'])) echo $data['error']['doi_tuong_dt']; ?></span>

                                    </div>
                                </div>

                            </div>

                            <div class="row">

                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <label>Ngày bắt đầu</label>
                                        <input type="date" class="form-control" placeholder="Tên Khóa Học" name="ngaybd" value="<?php if (isset($data['course']['ngaybd'])) echo $data['course']['ngaykt'] ?>">
                                        <span class='color-red'><?php if (isset($data['error']['ngaybd'])) echo $data['error']['ngaybd']; ?></span>
                                    </div>
                                </div>
                                <div class="col-md-4 ">
                                    <div class="form-group">
                                        <label>Ngày kết thúc</label>
                                        <input type="date" class="form-control" placeholder="Tên Khóa Học" name="ngaykt" value="<?php if (isset($data['course']['ngaykt'])) echo $data['course']['ngaykt'] ?>">
                                        <span class='color-red'><?php if (isset($data['error']['ngaykt'])) echo $data['error']['ngaykt']; ?></span>
                                    </div>
                                </div>

                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Nội Dung</label>
                                        <textarea style="min-height: 225px;" rows="4" cols="80" class="form-control" name="noi_dung" placeholder="Mô Tả - Giới Thiệu bản thân"><?php if (isset($data['course']['noi_dung'])) echo $data['course']['noi_dung']; ?></textarea>
                                        <span class='color-red'><?php if (isset($data['error']['noi_dung'])) echo $data['error']['noi_dung']; ?></span>
                                    </div>
                                </div>
                                <div class="col-md-12 d-flex flex-column">
                                    <label>Thêm ảnh khóa học</label>
                                    <input type="file" name="file" id="">
                                </div>
                            </div>
                            <button type="submit" name="btn-add" class="mt-3 btn btn-info btn-fill pull-right">Thêm mới Khóa Học</button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<?php include  './mvc/views/layout/footer.php'; ?>