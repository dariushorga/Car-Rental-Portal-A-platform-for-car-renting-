<?php
//? subscribe
if(isset($_POST['emailsubscibe']))
{
$subscriberemail=$_POST['subscriberemail'];
$sql ="SELECT SubscriberEmail FROM tblsubscribers WHERE SubscriberEmail=:subscriberemail";
$query= $dbh -> prepare($sql);
$query-> bindParam(':subscriberemail', $subscriberemail, PDO::PARAM_STR);
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query -> rowCount() > 0)
{
echo "<script>alert('Sunteti deja abonat');</script>";
}
else{
$sql="INSERT INTO  tblsubscribers(SubscriberEmail) VALUES(:subscriberemail)";
$query = $dbh->prepare($sql);
$query->bindParam(':subscriberemail',$subscriberemail,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo "<script>alert('Inscris cu succes.');</script>";
}
else
{
echo "<script>alert('Ceva nu a mers bine. Incearca din nou.');</script>";
}
}
}
?>

<footer>
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h3 class="text-white">Mai multe despre noi:</h3>
          <ul class="list-inline">
            <li><a href="about.php">Despre noi</a></li>
            <li><a href="faq.php">Intrebari frecvente</a></li>
            <li><a href="page.php?type=privacy">Politici</a></li>
            <li><a href="page.php?type=terms">Termeni si conditii</a></li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 col-md-offset-3 text-center">
          <h6>Inscrie-te la Newsletter-ul nostru</h6>
          <div class="newsletter-form">
            <form method="post">
              <div class="form-group">
                <input type="email" name="subscriberemail" class="form-control newsletter-input" required placeholder="Introdu adresa de Email" />
              </div>
              <button type="submit" name="emailsubscibe" class="btn btn-block">Inscriere <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </form>
            <p class="subscribed-text">*Vei primi periodic noi informatii despre serviciile noastre.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="copy-right">Copyright &copy; 2020. All Rights Reserved</p>
        </div>
      </div>
    </div>
  </div>
</footer>