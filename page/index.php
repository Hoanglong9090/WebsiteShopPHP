<?php
include("../layout/header.php");

global $conn;

$laySPcao1="SELECT * FROM sanpham ORDER BY DonGia DESC LIMIT 0,1";
$truyvan_laySPcao1=mysqli_query($conn,$laySPcao1);
$cot1=mysqli_fetch_array($truyvan_laySPcao1);

$laySPcao2="SELECT * FROM sanpham ORDER BY DonGia DESC LIMIT 1,1";
$truyvan_laySPcao2=mysqli_query($conn,$laySPcao2);
$cot2=mysqli_fetch_array($truyvan_laySPcao2);

$laySP="SELECT * FROM sanpham ORDER BY SoLuong DESC LIMIT 0,8";
$truyvan_laySP=mysqli_query($conn,$laySP);

?>

<div class="container-fluid" >
    <div class="row" style=" ">
    <div  id="myCarousel" class="carousel slide" data-ride='carousel'>
        <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="item active">
        <img src="../images/fashion2.webp" alt="" width="100%" >
      </div>

      <div class="item">
        <img src="../images/fashion1.jpg" alt="" width="100%">
      </div>
    
      <div class="item">
        <img src="../images/fashion.jpg" alt="" width="100%">
      </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
    </div>
</div>
<!--banner-ends-->
<!--Slider-Starts-Here-->

<!--End-slider-script-->
<!--start-banner-bottom-->
<div class="banner-bottom">
    <div class="container">
        <div class="banner-bottom-top">
            <div class="col-md-6 banner-bottom-left" style="margin-bottom: 10px !important;">
                <div class="bnr-one">
                    <div class="bnr-left">
                        <h1><a href="ChiTietSanPham.php?MaSP=<?php echo $cot1["MaSanPham"] ?>"><?php echo $cot1["TenSanPham"] ?></a></h1>
                        <p>Tận hưởng ưu đãi.</p>
                        <div class="b-btn">
                            <a href="ChiTietSanPham.php?MaSP=<?php echo $cot1["MaSanPham"] ?>">MUA NGAY</a>
                        </div>
                    </div>
                    <div class="bnr-right">
                        <a href="ChiTietSanPham.php?MaSP=<?php echo $cot1["MaSanPham"] ?>">
                            <img width="150" height="150" src="../images/HinhSP/<?php echo $cot1["Anh"]; ?>" alt="" />
                        </a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <div class="col-md-6 banner-bottom-right " >
                <div class="bnr-two">
                    <div class="bnr-left">
                        <h1><a href="ChiTietSanPham.php?MaSP=<?php echo $cot2["MaSanPham"] ?>"><?php echo $cot2["TenSanPham"] ?></a></h1>
                        <p>Thêm nhiều giảm giá.

                        </p>
                        <div class="b-btn">
                            <a href="ChiTietSanPham.php?MaSP=<?php echo $cot2["MaSanPham"] ?>">MUA NGAY</a>
                        </div>
                    </div>
                    <div class="bnr-right">
                        <a href="ChiTietSanPham.php?MaSP=<?php echo $cot2["MaSanPham"] ?>">
                            <img width="150" height="150" src="../images/HinhSP/<?php echo $cot2["Anh"]; ?>" alt="" />
                        </a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--end-banner-bottom-->
<!--start-shoes-->
<div class="shoes">
    <div class="container">
        <div class="product-one"></div>

            <?php
            $i=0;
            while($cot=mysqli_fetch_array($truyvan_laySP))
                {
                    $i++;
                ?>
        <div class="product-one">
            <div class="col-md-3 product-left">
                <div class="p-one simpleCart_shelfItem">
                    <a href="ChiTietSanPham.php?MaSP=<?php echo $cot["MaSanPham"]; ?>">
                        <img height="250" src="../images/HinhSP/<?php echo $cot["Anh"]; ?>" alt="" />
                        <div class="mask">
                            <span>Xem chi tiết</span>
                        </div>
                    </a>
                    <h4><?php echo $cot["TenSanPham"]; ?></h4>
                    <p><a class="item_add" href="#"><i></i> <span class=" item_price"> <?php echo DinhDangTien($cot["DonGia"]); ?> VNĐ</span></a></p>

                </div>
            </div>
        </div>
            <?php
                    if($i%4==0)
                    { ?>
                    <div class="clearfix"></div>
                <?php
                    }
                }
            ?>



    </div>
</div>
<!--end-shoes-->
<!--start-abt-shoe-->
<div class="abt-shoe">
    <div class="container">
        <div class="abt-shoe-main">
            <div class="col-md-4 abt-shoe-left">
                <div class="abt-one">
                    <a ><img src="../images/CDL10_1.jpg" alt="" /></a>
                    <h4><a href="">Áo</a></h4>
                    <p>Chất liệu đẹp, hợp thời trang các mùa.</p>
                </div> 
            </div>
            <div class="col-md-4 abt-shoe-left">
                <div class="abt-one">
                    <a ><img src="../images/60d99740efb4a-822115577-3-6-jp-9768-7023-1633673816.jpg" alt="" height="350px" width="350px" /></a>
                    <h4><a href="">Giày</a></h4>
                    <p>Có nhiều loại giày, thích hợp cho nhiều độ tuổi.</p>
                </div>
            </div>
            <div class="col-md-4 abt-shoe-left">
                <div class="abt-one">
                    <a ><img src="../images/DL6A4DM608D0 (1).jpg" alt="" /></a>
                    <h4><a href="">Thắt Lưng</a></h4>
                    <p>Xua tan nỗi lo về quần rộng.</p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>


<?php
include("../layout/footer.php");
?>
