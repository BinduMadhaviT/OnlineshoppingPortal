<%--
    Document   : welcome
    Created on : 15 Nov, 2017, 5:05:17 PM
    Author     : Bindu T
--%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing:content-box}
body {font-family: Verdana,sans-serif;margin:22px;}
.mySlides {display: ruby-text;}

/* Slideshow container */
.slideshow-container {
  width: 100%;
  height: min-content;
  position: static;
 background-attachment: fixed;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 30px;
  margin-top: -44px;
  color: gold;
  font-weight: bold;
  font-size: 100px;
  transition: 0.6s ease;
  border-radius: 0 8px 8px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 0 0 0 0;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: blue(0,0,0,0.8);
}

/* Caption text */
.text {
  
  padding: 0 12px;
  position:relative;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: floralwhite;
  font-size: 50px;
  padding: 8px 12px;
  position: absolute;
  top: 5;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: gold;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s linear;
}

.active, .dot:hover {
  background-color: blue;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
  
  .aaa{
      background: url("10.jpeg");
      background-attachment: fixed;
  }  
}
</style>
</head>
<body class="aaa">

<div class="slideshow-container">

<div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
  <div class="text" style="font-size:50px;font-style: italic;" >
      <img src="bg/10.jpeg" style="width: 100%;background-attachment:fixed">
      <a href="knowus.jsp" style="color: royalblue">know about us??!!</a>
  </div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="bg/12.jpg" style="width: 100%;background-attachment: fixed">
  <div class="text" style="font-size:50px;font-style: italic;"><a href="logboot/index.jsp">OPEN CHIBBZZ!!! GO SHOPPING...</a></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="bg/11.jpg" style="width: 100%;background-attachment: fixed">
  <div class="text" style="font-size:50px;font-style: italic;"><a href="suggest.jsp">Wanna share your view??!!</a></div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
</body>
</html>