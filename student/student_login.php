

 



<?php include("inc/header.php") ?><br><br>
<div class="col-md-5 p-0 row-cols-1 container justify-content-center">
<div class="text-primary col bg-primary text-light pt-auto pb-auto h3" style="height: 50px; text-align: center;" >
	Connectez Vous
</div>

<div class="container admin-form shadow p-4">
	<div class="row">
		<div class="col-md-6 offset-3">
             
			<form  id="student_login" method="POST" >
				<div id="message"></div>
				<div class="form-group">
                         <label for="" class="form-label text-bold text-primary">Votre Identifiant</label>
                              <input type="email" name="email" id="email" class="form-control" placeholder="par defaut: sira@gmail.com">
					
				</div>

				<div class="form-group">
                         <label for="" class="form-label text-bold text-primary">Mot de Pass</label>
                              <input type="password" name="mdp" id="mdp" class="form-control" placeholder="par defaut: SSSSSS">
					
				</div>

				 
                           <button type="submit" class=" btn btn-primary" id="mysubmit" name="send" value="send"> Valider </button>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href="index.php">Acceuil</a>
                       
			</form>
			
		</div>
		
	</div>
	</div>
</div>
<?php include("inc/footer.php") ?>