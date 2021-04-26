<%-- 
    Document   : home
    Created on : 26 avr. 2021, 09:09:06
    Author     : ADZOH-VINYO DIANA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/">
        <link rel="icon" href="https://ecole-alternance.cesi.fr/wp-content/uploads/sites/4/2019/01/cropped-icone-cesi-ecole-superieure-alternance-192x192.png" sizes="192x192" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        
        <title>Accueil</title>
    </head>
    <body>
    	<header>
    		<nav>
		    	<img alt="logo cesi" src="ecole-alternance.svg">
		    	<div>
			    	<a href="infos-formation">Informations sur la formation</a>
			
				     <a href="docu-attacks">Documentation des attaques</a>
				
				     <a href="https://catalogue.cesi.fr/manager-en-systemes-d-information-option-securite-2169032/" target="_blank">Site officiel du CESI</a>
				
				     <a href="games">Mini-jeux</a>
			    </div>
			     
			     <img id="gameMask" alt="logo cesi" src="game-mask.jpg">
    		</nav>
    	</header>
        		
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
		
		    <div class="carousel-indicators">
		      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
		      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
		      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
		    </div>
		    <div class="carousel-inner">
		      <div class="carousel-item">
		        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#BBB"></rect></svg>
		
		        <div class="container">
		          <div class="carousel-caption">
		            <h1>Bienvenue dans l'atelier Cybersécurité</h1>
		            <p>
		            	Serious game ou Jeu Sérieux: “Application informatique,
		            	 dont l’objectif est de combiner à la fois des aspects sérieux (Serious)
		            	  tels, de manière non exhaustive, l’enseignement, l’apprentissage, la communication,
		            	   ou encore l’information, avec des ressorts ludiques issus du jeu vidéo (Game)”
		            	   <br><br>
		            	   ~ Julian Alvarez, Docteur en Sciences de l'information et de la Communication
					</p>
		          </div>
		        </div>
		      </div>
		      <div class="carousel-item">
		        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#BBB"></rect></svg>
		
		        <div class="container">
		          <div class="carousel-caption">
		            <h1>Bienvenue dans l'atelier Cybersécurité</h1>
		            <p>Cette interface a pour but de donner un aperçu des connaissances techniques obtenues via la formation de Manager des Systèmes d’Informations en Alternance (MSIA)- Option Réseau </p>
		          </div>
		        </div>
		      </div>
		      <div class="carousel-item active">
		        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#BBB"></rect></svg>
		
		        <div class="container">
		          <div class="carousel-caption">
		            <h1>Bienvenue dans l'atelier Cybersécurité</h1>
		            <p>A propos: <br>Via ce site vous pourrez vous informer sur la formation en plus amples détails, en apprendre plus sur les possibilités offertes par l’option réseau, et vous divertir avec des “serious games” </p>
		          </div>
		        </div>
		      </div>
		    </div>
  </div>
        
        
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>    </body>
</html>

<style lang="text/scss">
	body{
		background-image: url('skull3.jpg');
		width: 75%;
		margin: 0 auto;
		height: 650px;
	}
	.block {
		background-color: #FFF;
	    width: 50%;
	    margin: 10% auto;
	    text-align: center;
	}
	.block p{
	    	font-size: 25px;
	}

	.carousel {
		width: 70%;
		height: 232px;
		margin: 10% auto;
	}
	.carousel-inner, .carousel-item {
		height: 100%;
	}
	.carousel-caption{
		color: #000;
	}
	.carousel-caption p{
		/*font-size: 17px;*/
	}
	nav {
		position:relative;
		float:right;
		top: -8em;
		right: -10%;
		width:15%;
		height: 100%;
	}
	nav img{
		display: flex;
    	width: 100%;
    	border: solid white 1px;
    	background-color: white;
	}
	nav a {
		border: solid white 1px;
	    width: 100%;
	    display: block;
	    color: white;
   		text-decoration: none;
   		font-size: 20px;
	}
	#gameMask {
		height: 100%;
	}
</style>