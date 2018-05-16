
<!DOCTYPE html >
<html lang="en">  
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<head><title>Bootstrap Website Tutorial</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">

/*************************NavBarStyling *****************************/

.navbar{
margin-bottom: 0;
border-radius:0;
background-color: #5E4485;
color:#FFF;
padding:1% 0;
font-size:1.2em;
border:0;
}
.navbar-brand{
float: left;
min-height: 55 px;
padding:0 15px 5px;
}

.navbar-inverse .navbar-nav .active a{
color:#FFF;
background-color:#5E4485;
}    

.navbar-inverse .navbar-nav .active a:focus{
color:#FFF;
background-color:#5E4485;
}
.navbar-inverse .navbar-nav .active a:hover{
color:#FFF;
background-color:#5E4485;
}

.navbar-inverse .navbar-toggle:hover {
    background-color: #5E4485;
    border:1.5px solid #FFF ;
}
.navbar-inverse .navbar-nav li a {
color: #D5D5D5;
}
/*************************NavBarStyling Ends*****************************/
/*************************CarouselStyling*****************************/
.carousel-caption{
top:50%;
transform:translateY(-50%);
text-transform: uppercase;
}
.btn{
font-size:18px;
color:#FFF;
padding:12px 22px;
background-color: #5E4485;
border:2px solid #FFF;
}


/*************************CarouselStyling Ends*****************************/
.container{
margin:4% auto;
}
#icon{
max-width:200px;
margin:1% auto;
}



footer{
width:100%;
background-color:#5E4485;
padding:5%;
color:#FFF;
}

.fa{
padding:15px;
font-size:30px;
color:#FFF;
}

.fa:hover{
color:#D5D5D5;
text-decoration: none;
}
/*For mobile version */

@media (max-width: 900px){
.fa{
font-size:20px;
padding:10px;
}
}

@media (max-width: 600px){
.carousel-caption{
display:none;
	}
#icon{
max-width:150px;
}
h2{
font-size:1.9em;
}
}

</style>



</head>
<body> 
<!-- *************************NavBar*****************************-->
	<nav class="navbar navbar-inverse" id="leftAlignedNavBar">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><img src="img/w3newbie.png">  </a>
			</div>
			<div class="collapse navbar-collapse" id="MyNavBar">
			<ul class="nav navbar-nav navbar-right">
 			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Services</a></li>
			<li><a href="#">Testimonials</a></li>
			<li><a href="#">Contact</a></li>
			</ul>
			</div>
		</div>
	</nav> 
<!-- *************************NavBar Ends*****************************-->
<!-- *************************Slider *****************************-->
	<div id="MyCarousel" class="carousel slide " data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#MyCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#MyCarousel" data-slide-to="1"></li>
			<li data-target="#MyCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
			<img src="img/mountains.png">
				<div class="carousel-caption">
				<h1>get to know bootstrap</h1>
				<br>
				<a class="btn btn-default" href="enquiry.jsp">Get STarted</a>
				</div>
			</div> <!-- End Active --> 
			<div class ="item">
			<img src="img/snow.png">
			</div>
			<div class ="item">
			<img src="img/red.png">
			</div>
		</div>
<!-- 		Slider control  -->
		<a class="left carousel-control" href="#MyCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#MyCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only"></span>
		</a>
	</div>
<!-- **************Carousel Ends ******************** -->
	<div class="container text-center">
	<h2>What we're using</h2>
		<div class="row">
			<div class="col-sm-4">
			<img src="img/html5.png" id="icon">
			<h4 class="text-center">HTML5</h4>
			</div>
			<div class="col-sm-4">
			<img src="img/bootstrap.png" id="icon">
			<h4 class="text-center">Bootstrap</h4>
			</div>
			<div class="col-sm-4">
			<img src="img/css3.png" id="icon">
			<h4 class="text-center">CSS3</h4>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h4>Here is the cool thing about Bootstrap!!!</h4>
				<p class="text-justify">Sep 6, 2014 - You are wanting to change the background color when hovering over 
				the parent element, therefore the :hover pseudo class should be after .navbar-toggle 
				as opposed to the .icon-bar . In other words, you should use the selector .navbar-toggle:hover
				 .icon-bar .Sep 6, 2014 - You are wanting to change the background color when hovering over 
				 the parent element, therefore the :hover pseudo class should be after .navbar-toggle a
				 s opposed to the .icon-bar . In other words, you should use the selector 
				 .navbar-toggle:hover .icon-bar .</p>
				<p class="text-justify">Sep 6, 2014 - You are wanting to change the background color when hovering over 
				the parent element, therefore the :hover pseudo class should be after .navbar-toggle 
				as opposed to the .icon-bar . In other words, you should use the selector .navbar-toggle:hover
				 .icon-bar .Sep 6, 2014 - You are wanting to change the background color when hovering over 
				 the parent element, therefore the :hover pseudo class should be after .navbar-toggle a
				 s opposed to the .icon-bar . In other words, you should use the selector 
				 .navbar-toggle:hover .icon-bar .</p>
			</div>
			<div class="col-md-6">
			<img src="img/bootstrap2.jpg" class="img-responsive">
			</div>
		</div>
	 	<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<h4>Header1</h4>
				<p>Sep 6, 2014 - You ar
				e wanting to change the background color when hovering over the parent element, 
				therefore the :hover pseudo class should be after .navbar-toggle as opposed to the .icon-bar . 
				In other words, you should use the selector .navbar-toggle:hover .icon-bar .
				</p>
				</div> 
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<img src="img/sass.png" class="img-responsive">
				</div> 
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<h4>Header2</h4>
				<p>Sep 6, 2014 - You ar
				e wanting to change the background color when hovering over the parent element, 
				therefore the :hover pseudo class should be after .navbar-toggle as opposed to the .icon-bar . 
				In other words, you should use the selector .navbar-toggle:hover .icon-bar .
				</p>
				</div> 
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<img src="img/less.png" class="img-responsive">
				</div> 
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4><a href="#hidden" data-toggle="collapse">Want to learn more about Bootstrap!!!</a></h4>
				<div id="hidden" class="collapse">
				<p>Sep 6, 2014 - You are wanting to change the background color when hovering over 
				the parent element, therefore the :hover pseudo class should be after .navbar-toggle 
				as opposed to the .icon-bar . In other words, you should use the selector .navbar-toggle:hover
				 .icon-bar .Sep 6, 2014 - You are wanting to change the background color when hovering over 
				 the parent element, therefore the :hover pseudo class should be after .navbar-toggle a
				 s opposed to the .icon-bar . In other words, you should use the selector 
				 .navbar-toggle:hover .icon-bar .</p>
				<p>Sep 6, 2014 - You are wanting to change the background color when hovering over 
				the parent element, therefore the :hover pseudo class should be after .navbar-toggle 
				as opposed to the .icon-bar . In other words, you should use the selector .navbar-toggle:hover
				 .icon-bar .Sep 6, 2014 - You are wanting to change the background color when hovering over 
				 the parent element, therefore the :hover pseudo class should be after .navbar-toggle a
				 s opposed to the .icon-bar . In other words, you should use the selector 
				 .navbar-toggle:hover .icon-bar .</p>
				 </div>
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<div class="row">
			<div class="col-sm-4">
				<h3>Contact Us</h3>
				<br>
				<h4>Our Address & contact Info</h4>
			</div>
			<div class="col-sm-4">
				<h3>Connect with Us!!!</h3>
				<a href="#" class="fa fa-facebook"></a>
				<a href="#" class="fa fa-twitter"></a>
				<a href="#" class="fa fa-google"></a>
				<a href="#" class="fa fa-linkedin"></a>
			</div>
			<div class="col-sm-4">
			<img src="img/bunny.png" class="icon">
			</div>
		</div>
	</footer>
</body>  
</html>  