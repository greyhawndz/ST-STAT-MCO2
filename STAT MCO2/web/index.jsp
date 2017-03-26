<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="css/semantic/semantic.min.css">
<script src="css/semantic/semantic.min.js"></script>

<title>Home</title>







<style>
.main.menu.fixed {
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
}

.main.menu.fixed {
	box-shadow: 0px 8px 5px rgba(0, 0, 0, 0.2);
}

.main.menu {
	border-radius: 0;
	border: none;
	box-shadow: none;
	transition: box-shadow 0.5s ease, padding 0.5s ease;
	
}

#container {
	background-color: #ffffff;
	position: relative;
	z-index: 1;
}

.pushFooter {
	height: 50vh;
}
</style>




</head>
<body>

	<div class="container" style="background-color: white;">
		<br>
		<div id="transparentmenu"
			class="ui large top  menu main four item secondary menu borderless ">
			<div class="ui container">
				<!-- 	<div href="Home.php" class="header item">
				<img onclick="window.location='Home.php'" class="ui small image"
					src="images\logo.PNG">
			</div> -->

				<a href="Home.php" class="item "> Home </a> <a href="About.php"
					class="item"> Coin </a> <a href="MilkaMinute.php" class="item ">
					Card </a> <a href="News.php" class="item"> Marble </a>
			</div>
		</div>

		<div class="ui container">
			<br>
			<h1 class="ui horizontal divider header">Select</h1>
			<div class="ui three cards">
				<div class="ui card">
					<div class="image">
						<img src="images/coin.jpg">
					</div>
					<div class="content">
						<a class="header">Coin</a>
						<div class="description">Probability of getting heads</div>
						<br>
						<button class="ui blue fluid button">Go To Page</button>

					</div>
				</div>
				<div class="ui card">
					<div class="image">
						<img src="images/card.jpeg">
					</div>
					<div class="content">
						<a class="header">Card</a>
						<div class="description">Probability of getting heads</div>
						<br>
						<button class="ui blue fluid button">Go To Page</button>

					</div>
				</div>
				<div class="ui card">
					<div class="image">
						<img src="images/marble.png">
					</div>
					<div class="content">
						<a class="header">Marble</a>
						<div class="description">Probability of getting heads</div>
						<br>
						<button class="ui blue fluid button">Go To Page</button>

					</div>
				</div>
			</div>


			<div id="mainmenu"
				class="ui large top fixed hidden four item menu main secondary pointing menu borderless  "
				style="visibility: hidden; z-index: 20;">

				<div class="ui container">
					<!-- 	<div href="Home.php" class="header item">
				<img onclick="window.location='Home.php'" class="ui small image"
					src="images\logo.PNG">
			</div> -->
					<div href="Home.php" class="header item">
						<div class="ui header huge">MC02</div>
					</div>
					<a href="Home.php" class="item active "> Home </a> <a
						href="About.php" class="item"> Coin </a> <a href="MilkaMinute.php"
						class="item "> Card </a> <a href="News.php" class="item">
						Marble </a>
				</div>
			</div>

			<br> <br> <br>

			<h1 class="ui horizontal divider header">Toss coin</h1>
			<br>
			<div class="ui grid">
				<div class="ui eight wide column ">
					<div class="ui fluid image">
						<img src="images/coin.jpg">
					</div>
				</div>
				<div class="ui eight wide column">
					<div class="ui content justify">Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations.</div>
					<br> <br>
					<button class="ui blue fluid button">Add Friend</button>
				</div>
			</div>
			<br>
			<h1 class="ui horizontal divider header">Toss coin</h1>
			<br>
			<div class="ui grid">
				<div class="ui eight wide column ">
					<div class="ui fluid image">
						<img src="images/card.jpeg">
					</div>
				</div>
				<div class="ui eight wide column">
					<div class="ui content justify">Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations.</div>
					<br> <br>
					<button class="ui fluid blue  button">Add Friend</button>
				</div>
			</div>
			<br> <br>
			<h1 class="ui horizontal divider header">Toss coin</h1>
			<br>
			<div class="ui grid">
				<div class="ui eight wide column ">
					<div class="ui fluid image">
						<img src="images/marble.png">
					</div>
				</div>
				<div class="ui eight wide column">
					<div class="ui content justify">Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations. Get probability of getting a
						head or a tail based on simulations.</div>
					<br> <br>
					<button class="ui fluid blue button">Add Friend</button>
				</div>
			</div>
		</div>

		<script>
			$('.card').hover(function() {
				$(this).transition('bounce');
			}, function() {
			});

			$('#mainmenu').visibility({
				once : false,
				onBottomPassed : function() {
					$('.fixed.menu').transition('fade in');
				},
				onBottomPassedReverse : function() {
					$('.fixed.menu').transition('fade out');
				}
			});
		</script>




	</div>


	<div class="pushFooter"></div>
	<div
		style="background-color: #333333; position: fixed; bottom: 0px; width: 100%; height: 50vh; z-index: -1;">
		<div class="ui container" style="color: white; padding-top: 100px;">
			<div class="ui grid">
				<div class="ui four wide column  ">
					<h1 class="ui header centered inverted">PROFESSOR</h1>
					<div class="ui medium header centered inverted">
						DR. REMEDIOS BULOS
						<div class="sub header ">remedios.bulos@dsdasdsdad</div>
					</div>
				</div>
				<div class="ui four wide column  ">
					<h3 class="ui header centered inverted">PROPONENT</h3>
					<div class="ui medium header centered inverted">
						PAOLO MIGUEL DE JESUS
						<div class="sub header ">paolo_dejesus@dlsu.edu.ph</div>
						<div class="sub header">+(63) 123 456 789</div>
					</div>
				</div>
				<div class="ui four wide column  ">
					<h3 class="ui header centered inverted">PROPONENT</h3>
					<div class="ui medium header centered inverted">
						WILLIAM PAOLO DIONIO
						<div class="sub header ">william_dionio@dlsu.edu.ph</div>
						<div class="sub header">+(63) 123 456 789</div>
					</div>
				</div>
				<div class="ui four wide column  ">
					<h3 class="ui header centered inverted">PROPONENT</h3>
					<div class="ui medium header centered inverted">
						GLENN HENRICK MATIAS
						<div class="sub header ">glenn_matias@dlsu.edu.ph</div>
						<div class="sub header">+(63) 123 456 789</div>
					</div>
				</div>
			</div>
		</div>
		<br>
	</div>

</body>
</html>