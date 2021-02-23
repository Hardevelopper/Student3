<?php include("inc/header.php") ?><br><br>

<div class="col-md-5 container justify-content-center">
<div class="bg-secondary text-light h2" style="height: 50px; text-align: center;" >
	Compte enseignant
</div>

<div class="container admin-form shadow p-4">
	<div class="row">
		<div class="col-md-6 offset-3">
             
			<form  id="teacher_login" method="POST" >
				<div id="message"></div>
				<div class="form-group">
                         <label for="" class="text-primary">Votre identifiant</label>
                              <input type="email" name="email_teacher" id="email_teacher" class="form-control" placeholder="admin@gmail.com">
					
				</div>

				<div class="form-group">
                         <label for="" class="text-primary">Mot de passe</label>
                              <input type="password" name="mdp_teacher" id="mdp_teacher" class="form-control" placeholder="123456">
					
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