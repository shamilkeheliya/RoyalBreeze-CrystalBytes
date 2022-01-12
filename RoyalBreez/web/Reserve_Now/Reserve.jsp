<%-- 
    Document   : Profile
    Created on : 26-Nov-2021, 15:35:55
    Author     : IsuraD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Reserve Now</title>
<link rel="icon" type="image/png" sizes="16x16" href="../images/icon.png">

<!-- Font -->
<link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu:wght@400;500;700&display=swap">
<style>

body {
font-family: 'Ubuntu', sans-serif;
font-weight: 400;
background-color: #2a2932;
letter-spacing: 1px;
}

.container {
background-color: #fafafa;
margin: 150px;
border-radius: 10px;

/*box-shadow: 20px 10px 15px 20px rgba(0, 0, 0, .1);*/
display: grid;  
grid-template-columns: 50% 50%;
/*padding: 20px;*/
padding-top: 30px;
padding-left: 30px;
padding-right: 30px;
padding-bottom: 30px;

}
.container-2 {

margin: auto;


/*padding: 50px;*/

/*outline-offset: -30px;*/

}

.heading {
font-size: 35px;
text-transform: uppercase;
}
.container-form {
/*padding: 30px 0;*/
margin: auto;

/*color: #000;*/
}


form {
display: grid;
grid-row-gap: 20px;

}
form p {
font-weight: 600;
}
.form-field {
display: flex;
justify-content: space-between;
}

input,select {
padding: 10px 15px;
}

.btn {
background-color: rgba(0, 0, 0, .95);
color: #fff;
padding: 10px 20px;
border: none;
font-size: 18px;
border-radius: 100px;
-webkit-border-radius: 100px;
-moz-border-radius: 100px;
-ms-border-radius: 100px;
-o-border-radius: 100px;
box-shadow: 7px 10px 12px rgba(0, 0, 0, .1);
cursor: pointer;
transition: all .3s;
-webkit-transition: all .3s;
-moz-transition: all .3s;
-ms-transition: all .3s;
-o-transition: all .3s;
}

.btn:hover {
background-color: #EDAD0F
;
transform: scale(1.03);
-webkit-transform: scale(1.03);
-moz-transform: scale(1.03);
-ms-transform: scale(1.03);
-o-transform: scale(1.03);
box-shadow: 10px 12px 15px rgba(0, 0, 0, .3);
}
input[type=text]:hover{
	border-color: #EDAD0F
;
}
input[type=email]:hover{
	border-color: #EDAD0F
;
}
input[type=date]:hover{
	border-color: #EDAD0F
;
}
input[id=dropdown]:hover{
	border-color: #EDAD0F
;
}



</style>
</head>
<body>
   <%@include file="../NavBar/nav.jsp" %>


<div class="container">
<div class="container-2">
<form  id="contact" action="../RoomReservation" method="post">

<h2 class="heading heading-yellow">Room Reservation</h2>

<div class="form-field">
<p>Your Name</p>
<input name="name" type="text" placeholder="Your Name">
</div>
<div class="form-field">
<p>Your email</p>
<input name="email" type="email" placeholder="Your email">
</div>
<div class="form-field">
<p>Check In Date</p>
<input name="indate" type="date">
</div>
<div class="form-field">
<p>Check Out Date</p>
<input name="outdate" type="date">
</div>
<div class="form-field">
<p>How many people?</p>
<select name="people" id="dropdown">
<option value="1 Person">1 Person</option>
<option value="2 Persons">2 Persons</option>
<option value="3 Persons">3 Persons</option>
<option value="4 Persons">4 Persons</option>
<option value="5 Persons">5 Persons</option>
<option value="5+ Persons">5+ Persons</option>
</select>
</div>

<div class="form-field">
<p>Room Type</p>
<select name="type" id="dropdown">
<option value="Single Room">Single Room</option>
<option value="Twin Room">Twin Room</option>
<option value="Double Room">Double Room</option>
</select>
</div>


<button class="btn"  name="submit" type="submit" id="contact-submit" data-submit="...Sending">BOOK NOW</button>
</form>
</div>
<div class="container-form">
<form id="contact" action="../HallReservation" method="post">

<h2 class="heading heading-yellow">Hall Reservation</h2>

<div class="form-field">
<p>Your Name</p>
<input name="name" type="text" placeholder="Your Name">
</div>
<div class="form-field">
<p>Your email</p>
<input name="email" type="email" placeholder="Your email">
</div>
<div class="form-field">
<p>Date</p>
<input name="date" type="date">
</div>

<div class="form-field">
<p>Hall Type</p>
<select name="type" id="dropdown">
<option value="Luxury Hall">Luxury Hall</option>
<option value="Grand Hall">Grand Hall</option>
<option value="Banquet Hall">Banquet Hall</option>
</select>
</div>
<div class="form-field">
<p>How many people?</p>
<select name="people" id="dropdown">
<option value="100 - 150">100 - 150</option>
<option value="150 - 200">150 - 200</option>
<option value="200 - 250">200 - 250</option>
<option value="250 - 300">250 - 300</option>
<option value="300 - 450">300 - 450</option>
<option value="450 - 500">450 - 500</option>
<option value="500+">500+</option>
</select>
</div>
<br>
<br>
<br>
<button class="btn"  name="submit" type="submit" id="contact-submit" data-submit="...Sending">BOOK NOW</button>
</form>
</div>
</div>

<%@include file="../Footer/footer.jsp" %>
</body>
</html>