<?php include  './mvc/views/layout/header.php'; ?>

<div class="content">
    <?php if (isset($_SESSION['qua_vong'])) {
        echo "<span class='mes'>" . $_SESSION['qua_vong'] . "</span>";
        unset($_SESSION['qua_vong']);
    } ?>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title" style="text-transform: uppercase;">Thông tin khóa học</h4>
                    </div>
                    <div class="card-body">
                        <form action="<?php echo ROOT_URL . "home/updateCourse/" . $data['course']['id'] ?>" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label>Tên khóa học</label>
                                        <input type="text" class="form-control" placeholder="Tên Khóa Học" name="ten_kh" value="<?php echo $data['course']['ten_kh'] ?>">
                                        <span class='color-red'><?php if (!empty($_SESSION['error']['ho_ten'])) echo $_SESSION['error']['ho_ten']; ?></span>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Đối tượng đào tạo</label>
                                        <input type="text" value="<?php echo $data['course']['doi_tuong_dt'] ?>" name="doi_tuong_dt" class="form-control">
                                        <span class='color-red'><?php if (!empty($_SESSION['error']['tuoi'])) echo $_SESSION['error']['tuoi']; ?></span>

                                    </div>
                                </div>

                            </div>


                            <div class="row">

                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label>Ngày bắt đầu</label>
                                        <input type="date" class="form-control" name="ngaybd" value="<?php if (isset($data['course']['ngaybd'])) echo $data['course']['ngaykt'] ?>">
                                        <span class='color-red'><?php if (isset($data['error']['ngaybd'])) echo $data['error']['ngaybd']; ?></span>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                    <div class="form-group">
                                        <label>Ngày kết thúc</label>
                                        <input type="date" class="form-control" name="ngaykt" value="<?php if (isset($data['course']['ngaykt'])) echo $data['course']['ngaykt'] ?>">
                                        <span class='color-red'><?php if (isset($data['error']['ngaykt'])) echo $data['error']['ngaykt']; ?></span>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Nội Dung</label>
                                        <textarea style="min-height: 225px;" rows="4" cols="80" class="form-control" name="noi_dung" placeholder="Mô Tả - Giới Thiệu bản thân"><?php echo $data['course']['noi_dung'] ?></textarea>
                                        <span class='color-red'><?php if (!empty($_SESSION['error']['noi_dung'])) echo $_SESSION['error']['noi_dung'];
                                                                unset($_SESSION['error']); ?></span>
                                    </div>
                                </div>
                                <div class="row  align-items-end">
                                    <div class="col-md-6 d-flex">
                                        <img class="ml-3" width="100%" src="<?php echo ROOT_URL . 'public/assets/img/uploads/' . $data['course']['hinh_anh'] ?>" alt="">
                                    </div>
                                    <div class="col-md-6 d-flex">
                                        <input type="file" name="file" id="">
                                        <input class="form-control" type="hidden" name="name-file" value="<?php echo $data['course']['hinh_anh'] ?>">
                                    </div>
                                </div>
                            </div>
                            <a href="<?php echo ROOT_URL . 'home/course_delete/' . $data['course']['id'] ?>" onclick="return confirm('Xóa khóa học !!!')" class="mt-3 btn btn-danger btn-fill pull-right">xóa Khóa Học</a>
                            <button type="submit" name="btn-update" class="mt-3 mr-3 btn btn-info btn-fill pull-right">Cập Nhật Khóa Học</button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card card-user" style="min-height: 938px;">
                    <div class="card-image">
                        <h3 class="d-block text-center">Danh sach nhân viên</h3>
                    </div>
                    <div class="card-body table-full-width table-responsive d-flex flex-column justify-content-between mh-565px">
                        <?php if (!empty($data['list_users']['list'])) {
                        ?>
                            <table class="table table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Họ Tên</th>
                                        <th>Giới Tính</th>
                                        <th>Gmail</th>
                                        <th>Thông Tin</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $count = 1;
                                    foreach ($data['list_users']['list'] as $user) {
                                    ?>
                                        <tr>
                                            <td><?php echo $count++; ?></td>
                                            <td><?php echo $user['ho_ten']; ?></td>
                                            <td><?php echo $user['gioi_tinh']; ?></td>
                                            <td><?php echo $user['gmail']; ?></td>
                                            <td class="d-flex">
                                                <a href="<?php echo ROOT_URL . "home/info/" . $user['id'] ?>" class="btn btn-outline-danger">Xem Thông Tin</a>
                                            </td>
                                        </tr>
                                    <?php
                                    } ?>

                                </tbody>
                            </table>

                            <nav aria-label="Page navigation" style=" justify-content: end; display: flex; margin-right: 15px; ">
                                <ul class="pagination">
                                    <?php
                                    if ($data['list_users']['current_page'] > 1) {
                                    ?>
                                        <li class="page-item">
                                            <a class="page-link" href="<?php echo ROOT_URL . "home/interns/?search=" . ($data['search']) . "&page=" . ($data['list_users']['current_page'] - 1) ?> " aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                    <?php
                                    }

                                    for ($i = 1; $i <= $data['list_users']['num_page']; $i++) {
                                    ?>

                                        <li class="page-item"><a class="page-link" href="<?php echo ROOT_URL . "home/interns/?search=" . ($data['search']) . "&page=" . $i ?> "><?php echo $i ?></a></li>
                                    <?php
                                    }

                                    if ($data['list_users']['current_page'] < $data['list_users']['num_page'] && $data['list_users']['num_page'] > 1) {
                                    ?>
                                        <li class="page-item">
                                            <a class="page-link" href="<?php echo ROOT_URL . "home/interns/?search=" . ($data['search']) . "&page=" . ($data['list_users']['current_page'] + 1) ?>" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    <?php
                                    }
                                    ?>
                                </ul>
                            </nav>
                        <?php
                        } else {
                            echo "<span style='display: block;padding: 0 15px;font-size: 18px;font-weight: 500;font-style: italic;'>chưa có nhân viên đăng ký khóa học !!!</span>";
                        } ?>



                    </div>
                    <hr>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card">
                        <div class="card-header">
                            <h4 style="text-transform: uppercase;">đánh giá của học viên</h4>
                        </div>
                        <div class="card-body">
                            <?php
                            if (!empty($data['list_cmt'])) {
                            ?>
                                <ul class="list-text-reviews row no-gutters" style="list-style: none;padding-left: 0;">
                                    <?php foreach ($data['list_cmt'] as $item) {
                                    ?>
                                        <li class="col-12 mb-3">
                                            <div class="reviews-item">
                                                <div class="student-info d-flex">
                                                    <img src="<?php echo ROOT_URL . "public/assets/img/avatars/" . $item['hinh_anh'] ?>" style="width: 48px; height: 48px; margin-right: 15px; border-radius: 100%;" alt="">
                                                    <div class="user-info">
                                                        <span class="fullname"><?php echo $item['ho_ten'] ?></span>

                                                        <div class="show-star">
                                                            <?php for ($i = 0; $i < $item['sao']; $i++) {
                                                            ?>
                                                                <i class="fas fa-star"></i>
                                                            <?php
                                                            } ?>
                                                            <span class="num-vote">(<?php echo $item['sao'] ?>/5)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="message"> <?php echo $item['danh_gia'] ?></div>
                                            </div>
                                        </li>
                                    <?php
                                    } ?>



                                </ul>
                            <?php
                            } else {
                                echo "<span style='display: block;padding: 0 15px;font-size: 18px;font-weight: 500;font-style: italic;'>Khóa học này chưa có đánh giá nào !!!</span>";
                            }
                            ?>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</div>

<?php include  './mvc/views/layout/footer.php'; ?>