<?php
session_start();
include('includes/config.php');
error_reporting(0);

?>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Car Rental Portal</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<link href="assets/css/slick.css" rel="stylesheet">
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
    <link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/dark.css" title="purple" media="all" />

<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
</head>
<body>

<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->

<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header -->


<section class="page-header aboutus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
				<h1>Intrebari frecvente</h1>
				<p class="text-white">Aici gasesti cateva intrebari ce te pot ajuta</p>
      </div>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<section class="about_us section-padding">
<div class="container">
	<h2>Aici gasesti cateva intrebari ce te pot ajuta</h2>
	<br><br>
  <button type="button" class="btn btn-sm" data-toggle="collapse" data-target="#q1">Ce documente sunt necesare pentru a putea inchiria o masina?</button><br>
  <div id="q1" class="collapse" >
		<br>
    <p>Aveti nevoie de permisul de conducere, de actul de identitate si de un card de credit atunci cand inchiriati masina. </p>

    <p>ACTUL DE IDENTITATE SAU PASAPORTUL</p>

    <p>PERMISUL DE CONDUCERE</p>
      <ul>
      <li>Trebuie sa fi fost emis cu cel putin un an inainte de data inchirierii masinii;</li>
      <li>Trebuie sa fie emis de autoritatile tarii in care sunteti rezident;</li>
      </ul>
    </p>
  </div>
</div>
<br>
<div class="container">
  <button type="button" class="btn btn-sm" data-toggle="collapse" data-target="#q2">Ce varsta minima trebuie sa am pentru a putea inchiria o masina de la CRP?</button><br>
  <div id="q2" class="collapse" >
		<br>
    <p>
    Trebuie sa aveti cel putin 21 de ani pentru a inchiria un autoturism in Romania si sa aveti permisul de conducere de cel putin un an. O taxa de sofer tanar se aplica pentru soferii care au mai putin de 25 de ani.
    </p>
  </div>
</div>
<br>
<div class="container">
  <button type="button" class="btn btn-sm" data-toggle="collapse" data-target="#q3">Voi primi autoturismul deja alimentat cu combustibil? </button><br>
  <div id="q3" class="collapse" >
		<br>
    <p>Toate autoturismele sunt inchiriate cu rezervorul plin si trebuie alimentate inaintea predarii lor. In caz contrar veti plati combustibilul lipsa.</p>
  </div>
</div>
<br>
<div class="container">
  <button type="button" class="btn btn-sm" data-toggle="collapse" data-target="#q4">Pot returna masina mai tarziu decat am stabilit la momentul inchirierii?</button><br>
  <div id="q4" class="collapse" >
		<br>
    <p>Intelegem ca e posibil sa intarziati si incercam sa fim flexibili. Daca returnati vehiculul cu intarziere sau trebuie sa prelungiti perioada de inchiriere a masinii, va rugam sa ne contactati in cel mai scurt timp. Ddaca returnati masina mai tarziu decat stabilit fara sa anuntati biroul de inchiriere sau fara sa prelungiti inchirierea, veti putea fi taxat suplimentar pentru predare cu intarziere.</p>

    <p>Va rugam sa retineti ca, daca veti returna masina dupa data si ora stabilite prin contractul de inchiriere, veti plati contravaloarea inchirierii pentru zilele suplimentare plus o taxa de returnare cu intarziere pentru fiecare zi (sau parte a unei zile) de intarziere (daca se aplica). </p>
  </div>
</div>
</section>










<!--Footer -->
<?php include('includes/footer.php');?>
<!-- /Footer-->

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top-->

<!--Login-Form -->
<?php include('includes/login.php');?>
<!--/Login-Form -->

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>
<!--/Forgot-password-Form -->

<!--Register-Form -->
<?php include('includes/registration.php');?>

<!--/Register-Form -->



<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/interface.js"></script>
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS-->
<script src="assets/js/bootstrap-slider.min.js"></script>
<!--Slider-JS-->
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>