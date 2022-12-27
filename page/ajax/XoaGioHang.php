<?php 
session_start();
function DinhDangTien($dongia) //1000000
{
    $sResult = $dongia;
    for ( $i = 3; $i < strlen($sResult); $i += 4)
    {
        $sSau = substr($sResult,strlen($sResult) - $i); // 000.000
        $sDau = substr($sResult,0, strlen($sResult) - $i); // 1
        $sResult = $sDau . "." . $sSau; // 1.000.000
    }
    return $sResult;
}
if(isset($_SESSION["giohang"])) // kiem tra ton tai gio hang
{
    foreach($_SESSION["giohang"] as $cotGH) {
        if($cotGH["masp"]!=$_POST["masanpham"])
        {
            $giohangdaco[]=array("masp"=>$cotGH["masp"],"hinhsp"=>$cotGH["hinhsp"],"tensp"=>$cotGH["tensp"],"soluong"=>$cotGH["soluong"],"dongia"=>$cotGH["dongia"]);
        }
    }
    $_SESSION["giohang"]=$giohangdaco;
}

if(count($_SESSION["giohang"])==0)
{
    unset($_SESSION["giohang"]);
    echo "<script>location='SanPham.php';</script>";
}
?>
