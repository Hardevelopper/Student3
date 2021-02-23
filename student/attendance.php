

<?php include("inc/header.php") ?>


<br><br>
<div class="col-md-5 container justify-content-center">
<div class="bg-secondary text-light h2 " style="height: 40px; text-align: center;" >
	SIGNEZ
</div>
<div class="container justify-content-center">

  <div class="admin-form shadow p-3">

    <form class="" action="trait_attendance.php" method="POST" id="attendance">
    	<div id="message"></div>
          <div class="form-group">
            <label for="email" class="form-label text-bold text-primary">E-mail</label>
            <input type="text" name="email" id="email" value="" class="form-control" placeholder="Votre email" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="password" class="form-label text-bold text-primary">Mot de passe</label>
            <input type="password" name="mdp" id="password" value="" class="form-control" placeholder="********" autocomplete="off">
          </div>
            <div class="row">
              <div class="col-md-5">
                <input type="submit" class="btn btn-primary form-control" name="submit" value="Signer">
              </div>
            <div class="col-md-5">
              <a href="index.php">Acceuil</a>
            </div>
          </div>
    </form>
  </div>



</div>
<!-- <div class="col-md-8 row  justify-content-center " id="form">
  <?php if (isset($message) and !empty($message)) {?>

    <div class="alert alert-success alert-dismissible fade show " role ="alert" id="alert" >
      <?=$message?>
      <button type="button" class="close" data-dismiss="alert" aria-label="close" >&times;</button>

    </div>
    <?php  } ?>
</div> -->
</div>
<?php include("inc/footer.php") ?>