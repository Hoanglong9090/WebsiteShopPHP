<?php

include("../layout/header.php");

if(!isset($_SESSION["tendangnhap"]))
    echo "<script>location='SanPham.php';</script>";

global $conn;

$layThongTin="SELECT * FROM thanhvien WHERE TenDangNhap='".$_SESSION["tendangnhap"]."'";
$truyvanlayThongTin=mysqli_query($conn,$layThongTin);
$cot=mysqli_fetch_array($truyvanlayThongTin);

?>

<div class="breadcrumbs">
    <div class="container">
        <div class="breadcrumbs-main">
            <ol class="breadcrumb">
                <li><a href="index.php">Trang chủ</a></li>
                <li class="active">Thông tin tài khoản</li>
            </ol>
        </div>
    </div>
</div>
<!--end-breadcrumbs-->
<!--start-account-->
<div class="account">
    <div class="container">
        <div class="account-bottom">
            <div class="col-md-6 account-left">
                <form method="post" action="<?php echo $_SERVER["PHP_SELF"] ?>">
                    <div class="account-top heading">
                        <h3>Thông tin tài khoản </h3>
                        <a href="#" id="a_doimatkhau">Đổi mật khẩu</a>
                        <br/>
                    </div>
                    <div class="address">
                        <span>Tên đăng nhập</span>
                        <input id="tendangnhap" type="hidden" value="<?php echo $cot["TenDangNhap"]; ?>">
                        <p><?php echo $cot["TenDangNhap"]; ?></p>
                    </div>

                    <div class="address">
                        <span>Mật khẩu</span>
                        <p>******** </p>
                    </div>
                    <div class="address">
                        <span>Họ tên</span>
                        <p><?php echo $cot["HoTen"]; ?></p>
                    </div>
                    <div class="address">
                        <span>Ngày sinh</span>
                        <p><?php echo date("d/m/Y",strtotime($cot["NgaySinh"])); ?></p>
                    </div>
                    <div class="address">
                        <span>Giới tính</span>
                        <p>
                       <?php
                            if($cot["GioiTinh"]=="F")
                                echo "Nữ";
                            else
                                echo "Nam";
                       ?>
                        </p>
                    </div>
                    <div class="address">
                        <span>Địa chỉ</span>
                        <p><?php echo $cot["DiaChi"]; ?></p>
                    </div>
                    <div class="address">
                        <span>Điện thoại</span>
                        <p><?php echo $cot["DienThoai"]; ?></p>
                    </div>
                    <div class="address">
                        <span>Email</span>
                        <p><?php echo $cot["Email"]; ?></p>
                    </div>
                </form>
            </div>

            <div class="col-md-6 account-left div_doimatkhau" style="display: none">
                    <div class="account-top heading">
                        <h3>Đổi mật khẩu</h3>
                    </div>
                    <div class="address">
                        <span>Mật khẩu cũ</span>
                        <input id="matkhaucu" type="password">
                    </div>
                    <div class="address">
                        <span>Mật khẩu mới</span>
                        <input id="matkhaumoi" type="password">
                    </div>
                    <div class="address">
                        <span>Nhập lại mật khẩu mới</span>
                        <input id="nlmatkhaumoi" type="password">
                    </div>
                    <div class="address">
                        <span style="color: red;" id="dmk_thongbao"></span>
                        <input id="doimatkhau" type="submit" value="Đổi mật khẩu">
                    </div>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<script src="../script/jsNguoiDung/jsNguoiDung.js"></script>

<script>

    $('#a_doimatkhau').click(function(){
        $('.div_doimatkhau').show();
        $('.div_doithongtin').hide();
    });

    $('#a_doithongtin').click(function(){
        $('.div_doimatkhau').hide();
        $('.div_doithongtin').show();
    });

    $(document).ready(function(){
        $('#doimatkhau').click(function(){

            matkhaucu=$('#matkhaucu').val();
            matkhaumoi=$('#matkhaumoi').val();
            nhaplaimatkhaumoi=$('#nlmatkhaumoi').val();

            loi=0;
            if( matkhaucu=="" || matkhaumoi=="")
            {
                loi++;
                $('#dmk_thongbao').text("Hãy nhập đầy đủ thông tin");
            }

            if(matkhaumoi!=nhaplaimatkhaumoi)
            {
                loi++;
                $('#dmk_thongbao').text("Mật khẩu mới nhập lại không trùng khớp");
            }

            if(loi!=0)
            {
                return false;
            }
            else
            {
                tendangnhap=$('#tendangnhap').val();
                $('#dmk_thongbao').text("");
                DoiMatKhau(tendangnhap,matkhaucu,matkhaumoi);
            }
        });

    });
</script>


<?php
include("../layout/footer.php");
?>

