<?php include  './mvc/views/layout/header.php'; ?>

        <div class="content">
        <?php if(isset($_SESSION['qua_vong'])) {echo "<span class='mes'>".$_SESSION['qua_vong']."</span>"; unset($_SESSION['qua_vong']);} ?>
        
            <div class="container-fluid">
               <div class="row">
                   <div class="col-md-12">
                   <div class="card strpied-tabled-with-hover">
                                <div class="card-header d-flex justify-content-between justify-content-center  align-items-center">
                                    <h4 class="card-title fw-500 col-md-6">Danh sách nhân viên được đào tạo</h4>
                                        <form action="" method="get" class="form-search d-flex col-md-6">
                                            <input class="form-control" name="search" value="<?php if(!empty($data['search'])) echo $data['search'];?>" type="text"> 
                                            <button type="submit" class="btn btn-primary ml-2">Tìm Kiếm</button>
                                        </form>
                                </div>
                                <div class="card-body table-full-width table-responsive d-flex flex-column justify-content-between mh-565px">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <tr><th>STT</th>
                                            <th>Họ Tên</th>
                                            <th>Tuổi</th>
                                            <th>Giới Tính</th>
                                            <th>Gmail</th>
                                            <th>SDT</th>
                                            <th>Địa Chỉ</th>
                                            <th>Thông Tin</th>
                                        </tr></thead>
                                        <tbody>
                                            <?php
                                            $count = 1;
                                            foreach ($data['users']['list'] as $user){
                                                ?>
                                                <tr>
                                                    <td><?php echo $count++; ?></td>
                                                    <td><?php echo $user['ho_ten']; ?></td>
                                                    <td><?php echo $user['tuoi']; ?></td>
                                                    <td><?php echo $user['gioi_tinh']; ?></td>
                                                    <td><?php echo $user['gmail']; ?></td>
                                                    <td><?php echo $user['sdt']; ?></td>
                                                    <td><?php echo $user['dia_chi']; ?></td>
                                                    <td class="d-flex"><a href="<?php echo ROOT_URL."home/info/".$user['id'] ?>" class="btn btn-outline-danger">Xem Thông Tin</a>
                                                    <a href="<?php echo ROOT_URL."home/undone/".$user['id'] ?>" class="btn btn-outline-secondary">Gỡ Bỏ</a></td>
                                                </tr>
                                                <?php
                                            } ?>
                                            
                                        </tbody>
                                    </table>

                                    <nav aria-label="Page navigation" style=" justify-content: end; display: flex; margin-right: 15px; ">
                                        <ul class="pagination">
                                        <?php 
                                            if($data['users']['current_page'] > 1){
                                                ?>
                                                <li class="page-item">
                                            <a class="page-link" href="<?php echo ROOT_URL."home/interns/?search=".($data['search'])."&page=".($data['users']['current_page'] -1) ?> " aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                                <?php 
                                            }
                                        
                                            for($i = 1; $i <= $data['users']['num_page'] ; $i++){
                                                ?>

                                                    <li class="page-item"><a class="page-link" href="<?php echo ROOT_URL."home/interns/?search=".($data['search'])."&page=".$i ?> "><?php echo $i ?></a></li>
                                                <?php
                                            }

                                            if($data['users']['current_page'] < $data['users']['num_page'] && $data['users']['num_page'] >1){
                                                ?>
                                            <li class="page-item">
                                                <a class="page-link" href="<?php echo ROOT_URL."home/interns/?search=".($data['search'])."&page=".($data['users']['current_page'] + 1) ?>" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                                <?php
                                            }
                                        ?>
                                        
                                        
                                            
                                        
                                           
                                            
                                        </ul>
                                    </nav>

                                            

                                </div>
                            </div>
                   </div>
               </div>
            </div>
        </div>

<?php include  './mvc/views/layout/footer.php'; ?>