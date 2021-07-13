<?php 
  	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);
		/* query select untuk menampilkan */
	 $produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id = '".$_GET['id']."' ");
	$p = mysqli_fetch_object($produk);
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Jterritory</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header>
			<div class="container"> 
			<h1><a href="index.php">Jterritory</a></h1>
			<ul>
				<li><a href="produk.php">Post</a></li>
			</ul>
	    </div>
	</header>	

	<!-- search -->
		<div class="search">
			<div class="container">
				<form action="produk.php">
					<input type="text" name="search" placeholder="Cari Post" value="<?php echo $_GET['search'] ?>">
					<input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
					<input type="submit" name="cari" value="Cari Post">
				</form>
			</div>
		</div>

		<!-- product detail -->
		<div class="section">
			<div class="container">
				<h3>Detail Post</h3>
				<div class="box">
					<div class="col-2">
						<img src="produk/<?php echo $p->product_image ?>" width="100%">
					</div>
					<div class="col-2">
						<h3><?php echo $p->product_name ?></h3>
						<h4>Rp. <?php echo number_format($p->product_price)  ?></h4>
						<p>Deskripsi :<br>
							<?php echo $p->product_description ?>
						</p>
						<p><a href="https://api.whatsapp.com/send?phone=<?php echo $a->admin_email ?>&text=Hai, saya tertarik dengan lowongan anda." target="_blank">Hubungin via Whatsapp <img src="img/wa.png" width="40px"></a>
						</p>
					</div>
				</div>
			</div>
		</div>


		<!-- footer -->
		<div class="footer">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address ?></p>

			<h4>Email</h4>
			<p><?php echo $a->admin_email ?></p>

			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp ?></p>
			<div class="container">
				<small>Copyright &copy; 2021 - Jterritory.</small>
			</div>
		</div>
</body>
</html>