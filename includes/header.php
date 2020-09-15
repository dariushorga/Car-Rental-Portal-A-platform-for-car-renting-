
<header>
  <div class="default-header">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 col-md-2">
          <div class="logo"> <a href="index.php"><img src="assets/images/logo.png" alt="image"/></a> </div>
        </div>
        <div class="col-sm-9 col-md-10">
          <div class="header_info">
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Pentru contact prin email:</p>
              <a href="#">car.rent.port@gmail.com</a> </div>
            <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Pentru contact telefonic:</p>
              <a href="#">0749364515</a> </div>
            <div class="social-follow">
              <ul>
                <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
              </ul>
            </div>
   <?php   if(strlen($_SESSION['login'])==0)
	{
?>
 <div class="login_btn"> <a href="#loginform" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Login / Inregistrare</a> </div>
<?php }
else{

echo "Bun venit!";
 } ?>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Navigation -->
  <nav id="navigation_bar" class="navbar navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Deschide meniul</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <div class="header_wrap">
        <div class="user_login">
          <ul>
            <li class="dropdown"> <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-circle" aria-hidden="true"></i>
<?php
//? preluare nume
$email=$_SESSION['login'];
$sql ="SELECT FullName FROM tblusers WHERE EmailId=:email ";
$query= $dbh -> prepare($sql);
$query-> bindParam(':email', $email, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
	{

	 echo htmlentities($result->FullName); }}?><i class="fa fa-angle-down" aria-hidden="true"></i></a>
              <ul class="dropdown-menu">
           <?php if($_SESSION['login']){?>
            <li><a href="profile.php">Setari profil</a></li>
              <li><a href="update-password.php">Schimba parola</a></li>
            <li><a href="my-booking.php">Rezervarile mele</a></li>
            <li><a href="post-testimonial.php">Posteaza un testimonial</a></li>
          <li><a href="my-testimonials.php">Testimonialele mele</a></li>
            <li><a href="logout.php">Iesi din cont</a></li>
            <?php } else { ?>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Setari profil</a></li>
              <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Schimba parola</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Rezervarile mele</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Posteaza un testimonial</a></li>
          <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Testimonialele mele</a></li>
            <li><a href="#loginform"  data-toggle="modal" data-dismiss="modal">Iesi din cont</a></li>
            <?php } ?>
          </ul>
            </li>
          </ul>
        </div>
      </div>
      <div class="collapse navbar-collapse" id="navigation">
        <ul class="nav navbar-nav">
          <li><a href="index.php">Acasa</a></li>
          <li><a href="about.php">Despre noi</a></li>
          <li><a href="car-listing.php">Lista Autoturisme</a>
          <li><a href="faq.php">Intrebari frecvente</a></li>
          <li><a href="contact-us.php">Contacteaza-ne</a></li>

        </ul>
      </div>
    </div>
  </nav>
  <!-- Navigation end -->

</header>