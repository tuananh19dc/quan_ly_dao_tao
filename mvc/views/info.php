<?php include  './mvc/views/layout/header.php'; ?>

        <div class="content">
        <span class="mess"><?php
    if(isset($_SESSION['mess'])){
        echo $_SESSION['mess'];
        unset($_SESSION['mess']);
    }
    
    ?></span>
        
            <div class="container-fluid">
            <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title" style="text-transform: uppercase;">Thông tin nhân viên</h4>
                                </div>
                                <div class="card-body">
                                    <form action="<?php echo ROOT_URL."home/updateProfile/".$data['users']['id'] ?>" method="post">
                                        <div class="row">
                                            <div class="col-md-5 pr-1">
                                                <div class="form-group">
                                                    <label>Họ và Tên (Không thay đổi)</label>
                                                    <input type="text" class="form-control" disabled="" placeholder="Họ và Tên" name="ho_ten" value="<?php echo $data['users']['ho_ten'] ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['ho_ten'])) echo $_SESSION['error']['ho_ten'];?></span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 px-1">
                                                <div class="form-group">
                                                    <label>Tuổi</label>
                                                    <input type="number" min='0' value="<?php echo $data['users']['tuoi'] ?>" name="tuoi" class="form-control" >
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['tuoi'])) echo $_SESSION['error']['tuoi'];?></span>
                                                
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Giới Tính</label>
                                                    <select class="form-control" name="gioi_tinh" id="">
                                                        <option value="nam" <?php if($data['users']['gioi_tinh'] == 'nam') echo "selected" ?> >Nam</option>
                                                        <option value="nữ" <?php if($data['users']['gioi_tinh'] == 'nu') echo "selected" ?> >Nữ</option>
                                                    </select>
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['gioi_tinh'])) echo $_SESSION['error']['gioi_tinh'];?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Gmail </label>
                                                    <input type="text" class="form-control" placeholder="Gmail" disabled="" name="gmail"  value="<?php echo $data['users']['gmail'] ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['gmail'])) echo $_SESSION['error']['gmail'];?></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6 pl-1">
                                                <div class="form-group">
                                                    <label>Số Điện Thoại</label>
                                                    <input type="text" class="form-control" placeholder="Số Điện Thoại" name="sdt" value="<?php echo $data['users']['sdt'] ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['sdt'])) echo $_SESSION['error']['sdt'];?></span>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Địa Chỉ</label>
                                                    <input type="text" class="form-control" placeholder="Địa Chỉ" name="dia_chi" value="<?php echo $data['users']['dia_chi'] ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['dia_chi'])) echo $_SESSION['error']['dia_chi'];?></span>
                                                 </div>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Giới Thiệu</label>
                                                    <textarea style="min-height: 225px;" rows="4" cols="80" class="form-control" name="mo_ta" placeholder="Mô Tả - Giới Thiệu bản thân" ><?php echo $data['users']['mo_ta'] ?></textarea>
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['mo_ta'])) echo $_SESSION['error']['mo_ta']; unset($_SESSION['error']);?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-user">
                                <div class="card-image">
                                    <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&amp;fm=jpg&amp;h=300&amp;q=75&amp;w=400" alt="...">
                                </div>
                                <div class="card-body">
                                    <div class="author">
                                        <a href="#">
                                            <img class="avatar border-gray" src="<?php echo ROOT_URL."public/assets/img/avatars/".$data['users']['hinh_anh'] ?>" alt="...">
                                            <h5 class="title"><?php echo $data['users']['ho_ten'] ?></h5>
                                        </a>
                                        <p class="description">
                                        <?php echo $data['users']['tuoi'] ?> Tuổi
                                        </p>
                                    </div>
                                    <p class="description text-center" style=" width: 100%; display: block; padding: 0px 50px; ">
                                    <?php echo $data['users']['mo_ta'] ?>
                                    </p>
                                </div>
                                <hr>
                                <div class="button-container mr-auto ml-auto">
                                    <button href="#" class="btn btn-simple btn-link btn-icon">
                                        <i class="fa fa-facebook-square"></i>
                                    </button>
                                    <button href="#" class="btn btn-simple btn-link btn-icon">
                                        <i class="fa fa-twitter"></i>
                                    </button>
                                    <button href="#" class="btn btn-simple btn-link btn-icon">
                                        <i class="fa fa-google-plus-square"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>

<?php include  './mvc/views/layout/footer.php'; ?>