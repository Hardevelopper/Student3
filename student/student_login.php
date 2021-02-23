<?php include("inc/header.php") ?><br><br>

<div class="col-md-5 container justify-content-center">
<div class="bg-secondary text-light h2" style="height: 50px; text-align: center;" >
	Compte étudiant
</div>

<div class="container admin-form shadow p-4">
	<div class="row">
		<div class="col-md-6 offset-3">
             
			<form  id="student_login" method="POST" >
				<div id="message"></div>
				<div class="form-group">
                         <label for="email" class="text-primary">email</label>
                              <input type="email" name="email" id="email" class="form-control" placeholder="Votre email" autocomplete="off">
					
				</div>

				<div class="form-group">
                         <label for="mdp" class="text-primary">Mot de passe</label>
                              <input type="password" name="mdp" id="mdp" class="form-control" placeholder="********" autocomplete="off">
					
				</div>
				<div class="row">
					<div class="col-md-5">
						<button type="submit" class=" btn btn-primary form-control" id="mysubmit" name="send" value="send"> Valider </button>
					</div>
					<div class="col-md-5">
						<a href="index.php">Acceuil</a>
					</div>
				</div>            
			</form>
			
		</div>
		
	</div>
	</div>
</div>
<?php include("inc/footer.php") ?>