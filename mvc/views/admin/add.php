<?php include  './mvc/views/admin/layout/header.php'; ?>

        <div class="content">
        
            <div class="container-fluid">
            <div class="row">
                        <div class="col-md-10">
                            <div class="card">
                                <div class="card-header d-flex justify-content-between">
                                    <h4 class="card-title" style="text-transform: uppercase;">Thêm Mới nhân viên</h4>
                                    <?php
                                    if(isset($_SESSION['mess'])){
                                    echo "<span class='mess' style=' margin-left: 15px; background: #6ee075; padding: 8px 12px; z-index: 1; display: inline-block; border-radius: 8px; font-size: 18px; font-weight: 500; color: black; '>".$_SESSION['mess']."</span>";
                                    unset($_SESSION['mess']);
                                    }?>
                                </div>
                                <div class="card-body">
                                    <form action="<?php echo ROOT_URL."admin/add_store" ?>" method="post">
                                        <div class="row">
                                            <div class="col-md-5 pr-1">
                                                <div class="form-group">
                                                    <label>Họ và Tên</label>
                                                    <input type="text" class="form-control" placeholder="Họ và Tên" name="ho_ten" value="<?php if(isset($_SESSION['value']['ho_ten'])) echo $_SESSION['value']['ho_ten']; ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['ho_ten'])) echo $_SESSION['error']['ho_ten'];?></span>
                                                </div>
                                            </div>
                                            <div class="col-md-3 px-1">
                                                <div class="form-group">
                                                    <label>Tuổi</label>
                                                    <input type="number" min='0' value="<?php if(isset($_SESSION['value']['tuoi'])) echo $_SESSION['value']['tuoi']; ?>" name="tuoi" class="form-control" >
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['tuoi'])) echo $_SESSION['error']['tuoi'];?></span>
                                                
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Giới Tính</label>
                                                    <select class="form-control" name="gioi_tinh" id="">
                                                        <option value="nam" <?php if(isset($_SESSION['value']['gioi_tinh']) && $_SESSION['value']['gioi_tinh'] == 'nam') echo 'selected' ?> >Nam</option>
                                                        <option value="nu" <?php if(isset($_SESSION['value']['gioi_tinh']) && $_SESSION['value']['gioi_tinh'] == 'nu') echo 'selected' ?> >Nữ</option>
                                                    </select>
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['gioi_tinh'])) echo $_SESSION['error']['gioi_tinh'];?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Gmail </label>
                                                    <input type="email" class="form-control" placeholder="Gmail" name="gmail"  value="<?php if(isset($_SESSION['value']['gmail'])) echo $_SESSION['value']['gmail']; ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['gmail'])) echo $_SESSION['error']['gmail'];?></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6 pl-1">
                                                <div class="form-group">
                                                    <label>Số Điện Thoại</label>
                                                    <input type="text" class="form-control" placeholder="Số Điện Thoại" name="sdt" value="<?php if(isset($_SESSION['value']['sdt'])) echo $_SESSION['value']['sdt']; ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['sdt'])) echo $_SESSION['error']['sdt'];?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Địa Chỉ</label>
                                                    <input type="text" class="form-control" placeholder="Địa Chỉ" name="dia_chi" value="<?php if(isset($_SESSION['value']['dia_chi'])) echo $_SESSION['value']['dia_chi']; ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['dia_chi'])) echo $_SESSION['error']['dia_chi'];?></span>
                                                 </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            
                                        <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label for="hoc_van">Học Vấn</label>
                                                    <select class="form-control" name="hoc_van" id="hoc_van">
                                                        <option value="dh" <?php if(isset($_SESSION['value']['hoc_van']) && $_SESSION['value']['hoc_van'] == 'dh' ) echo 'selected' ?> >Đại Hoc</option>
                                                        <option value="cd" <?php if(isset($_SESSION['value']['hoc_van']) && $_SESSION['value']['hoc_van'] == 'cd' ) echo 'selected' ?> >Cao Đẳng</option>
                                                        <option value="tc" <?php if(isset($_SESSION['value']['hoc_van']) && $_SESSION['value']['hoc_van'] == 'tc' ) echo 'selected' ?> >Trung Cấp</option>
                                                        <option value="khac" <?php if(isset($_SESSION['value']['hoc_van']) && $_SESSION['value']['hoc_van'] == 'khac' ) echo 'selected' ?> >Khác</option>
                                                    </select>
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['hoc_van'])) echo $_SESSION['error']['hoc_van'];?></span>
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label>Chức Vụ</label>
                                                    <input type="text" class="form-control" placeholder="Chức Vụ" name="chuc_vu" value="<?php if(isset($_SESSION['value']['chuc_vu'])) echo $_SESSION['value']['chuc_vu']; ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['chuc_vu'])) echo $_SESSION['error']['chuc_vu'];?></span>
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label>Tiền Lương (Triệu đồng)</label>
                                                    <input type="text" class="form-control" placeholder="Tiền Lương" name="luong" value="<?php if(isset($_SESSION['value']['luong'])) echo $_SESSION['value']['luong']; ?>">
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['luong'])) echo $_SESSION['error']['luong'];?></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Giới Thiệu</label>
                                                    <textarea style="min-height: 225px;" rows="4" cols="80" class="form-control" name="mo_ta" placeholder="Mô Tả - Giới Thiệu bản thân" ><?php if(isset($_SESSION['value']['mo_ta'])) echo $_SESSION['value']['mo_ta']; ?></textarea>
                                                    <span class='color-red'><?php if(!empty($_SESSION['error']['mo_ta'])) echo $_SESSION['error']['mo_ta']; unset($_SESSION['error']);unset($_SESSION['value']);?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" name="btn-add" class="btn btn-info btn-fill pull-right">Thêm mới nhân viên</button>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                    </div>
            </div>
        </div>

<?php include  './mvc/views/admin/layout/footer.php'; ?>