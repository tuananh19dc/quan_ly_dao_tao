<?php include  './mvc/views/layout/header.php'; ?>

<div class="content">
    <?php if (isset($_SESSION['update'])) {
        echo "<span class='mes'>" . $_SESSION['update'] . "</span>";
        unset($_SESSION['update']);
    } ?>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card strpied-tabled-with-hover">
                    <div class="card-header d-flex justify-content-between justify-content-center  align-items-center">
                        <h4 class="card-title fw-500 col-md-6">Danh sách khóa đào tạo</h4>
                        <!-- <form action="" method="get" class="form-search d-flex col-md-6">
                            <input class="form-control" name="search" value="<?php if (!empty($data['search'])) echo $data['search']; ?>" type="text">
                            <button type="submit" class="btn btn-primary ml-2">Tìm Kiếm</button>
                        </form> -->
                    </div>
                    <div class="add-course ml-3">
                        <a href="<?php echo ROOT_URL.'home/course_add' ?>" class="btn btn-primary">Thêm Khóa Học</a>
                    </div>
                    <div class="card-body table-full-width table-responsive d-flex flex-column justify-content-between mh-565px">
                        <ul class="list-cat d-flex " style=" justify-content: center; ">
                            <?php
                            foreach ($data['cat'] as $item) {
                            ?>
                                <li class="cat-item">
                                    <a class="cat-link <?php if(isset($_GET['id_course']) && $_GET['id_course'] == $item['id']) echo 'active-btn';  ?>" aria-current="page" href="<?php echo ROOT_URL . 'home/course?id_course=' . $item['id'] ?>"><?php echo $item['ten_dm']; ?></a>
                                </li>
                            <?php
                            }
                            ?>
                        </ul>
                        <div class="row content-course">
                            <?php foreach ($data['cats'] as $item) {
                            ?>
                                <div class="col-md-3 course-item">
                                    <a href="<?php echo ROOT_URL.'home/course_detail/'.$item['id'] ?>" class="course-item-link">
                                        <div class="card" style="width: 18rem;overflow: hidden;">
                                            <div class="card-top" style="width: 100%; height: 286px;">
                                                <img src="<?php echo ROOT_URL . "public/assets/img/uploads/".$item['hinh_anh'] ?>" class="card-img-top hover-zoom" alt="...">
                                            </div>
                                            <div class="card-body">
                                                <p class="card-text course-title" style=" color: #000; "><?php echo $item['ten_kh'] ?> </p>
                                                <div class="d-flex  justify-content-end">
                                                    <button class="btn btn-primary btn-sm ">Xem thêm..</button>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>

                            <?php
                            } ?>



                        </div>

                        <!-- PAGINATION  -->
                        <!-- <nav aria-label="Page navigation" style=" justify-content: end; display: flex; margin-right: 15px; ">
                                        <ul class="pagination">
                                        <?php
                                        if ($data['users']['current_page'] > 1) {
                                        ?>
                                                <li class="page-item">
                                            <a class="page-link" href="<?php echo ROOT_URL . "home/show/?search=" . ($data['search']) . "&page=" . ($data['users']['current_page'] - 1) ?> " aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                                <?php
                                            }

                                            for ($i = 1; $i <= $data['users']['num_page']; $i++) {
                                                ?>

                                                    <li class="page-item"><a class="page-link" href="<?php echo ROOT_URL . "home/show/?search=" . ($data['search']) . "&page=" . $i ?> "><?php echo $i ?></a></li>
                                                <?php
                                            }

                                            if ($data['users']['current_page'] < $data['users']['num_page'] && $data['users']['num_page'] > 1) {
                                                ?>
                                            <li class="page-item">
                                                <a class="page-link" href="<?php echo ROOT_URL . "home/show/?search=" . ($data['search']) . "&page=" . ($data['users']['current_page'] + 1) ?>" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                                <?php
                                            }
                                                ?>                                     
                                        </ul>
                                    </nav> -->



                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include  './mvc/views/layout/footer.php'; ?>