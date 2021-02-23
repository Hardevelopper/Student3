<?php include("inc/header.php") ?><br>

<div class="col-md-5 p-0  container justify-content-center">
<div class="bg-secondary text-light h2" style="height: 50px; text-align: center;" >
	INSCRIPTION
</div>

<div class="container shadow">
             
			<form  id="register-form" method="POST">
				<div id="message"></div>

				<div class="row  mb-5">
				<div class="col-md-6">
                         <label for="fullname" class="text-primary">Nom et prenom</label>
                              <input type="text" name="nom" id="fullname" class="form-control" placeholder="votre nom et prenom" autocomplete="off">
					
				</div>

				<div class="col-md-6">
                         <label for="" class="form-label text-bold text-primary">E-mail</label>
                         <div id="avert_mail"></div>
                              <input type="email" name="email" id="email" class="form-control" placeholder="Ex : student@gmail.com" autocomplete="off">
					
				</div>
				</div>

				<div class="row  mb-5">	
				<div class="col-md-6">
                         <label for="" class="form-label text-bold text-primary">Mot de passe</label>
                              <input type="password" name="mdp" id="mdp" class="form-control" placeholder="********" autocomplete="off">
					
				</div>

				<div class="col-md-6">
                         <label for="" class="form-label text-bold text-primary">Mot de passe</label>
                              <input type="password" name="mdp2" id="mdp_c" class="form-control" placeholder="********" autocomplete="off">
					
				</div>
				</div>

				<div class="row  mb-5">
              <div class="col-md-6">
                         <label for="" class="form-label text-bold text-primary">Numero de telephonne</label>
                          <div id="avert_tel"></div>
                              <input type="tel" name="tel" id="tel" class="form-control" placeholder="01020304" autocomplete="off">
					
				</div>


             <div class="col-md-6">
                         <h6 class="col-md-6 text-bold text-primary">Genre</h6>
                         	<label>
                         		<input type="radio" name="gender" value="Mr"> Masculin
                         	</label>
                         	<label>
                         		<input type="radio" name="gender" value="Mlle"> Feminin
                         	</label>
                              
                              
				</div>	
				</div>


               <div class="form-group">
                         <label for="profil" class="form-label text-bold text-primary">Ajouter une photo de profile</label>
                            <input type="file" name="profil" id="profil">  
					
				</div>


				<div class="row mb-2">
				<div class="col-md-6">	
				 
                           <button type="submit" class=" btn btn-primary form-control" id="mysubmit" name="send" value="send"> Valider </button>
                </div>

                 <div class="col-md-6">
                           <a href="index.php">Acceuil</a>
                 </div> 
                 </div>     

			</form>
	</div>
	<div class="bg-secondary" style="height: 5px;"></div>
</div>
<?php include("inc/footer.php") ?>