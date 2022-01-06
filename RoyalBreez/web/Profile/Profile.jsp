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
<title>Booking</title>

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
<form action="#">

<h2 class="heading heading-yellow">Room Reservation</h2>

<div class="form-field">
<p>Your Name</p>
<input type="text" placeholder="Your Name">
</div>
<div class="form-field">
<p>Your email</p>
<input type="email" placeholder="Your email">
</div>
<div class="form-field">
<p>Check In Date</p>
<input type="date">
</div>
<div class="form-field">
<p>Check Out Date</p>
<input type="date">
</div>
<div class="form-field">
<p>How many people?</p>
<select name="select" id="dropdown">
<option value="1">1 person</option>
<option value="2">2 persons</option>
<option value="3">3 persons</option>
<option value="4">4 persons</option>
<option value="5">5 persons</option>
<option value="5+">5+ persons</option>
</select>
</div>

<div class="form-field">
<p>Room Type</p>
<select name="select" id="dropdown">
<option value="1">Single Room</option>
<option value="2">Twin Room</option>
<option value="3">Double Room</option>
</select>
</div>


<button class="btn">BOOK NOW</button>
</form>
</div>
<div class="container-form">
<form action="#">

<h2 class="heading heading-yellow">Hall Reservation</h2>

<div class="form-field">
<p>Your Name</p>
<input type="text" placeholder="Your Name">
</div>
<div class="form-field">
<p>Your email</p>
<input type="email" placeholder="Your email">
</div>
<div class="form-field">
<p>Check In Date</p>
<input type="date">
</div>

<div class="form-field">
<p>Hall Type</p>
<select name="select" id="dropdown">
<option value="1">Luxury Hall</option>
<option value="2">Grand Hall</option>
<option value="3">Banquet Hall</option>
</select>
</div>
<div class="form-field">
<p>How many people?</p>
<select name="select" id="dropdown">
<option value="1">100+</option>
<option value="2">200+</option>
<option value="3">500+</option>
</select>
</div>
<br>
<br>
<br>
<button class="btn">BOOK NOW</button>
</form>
</div>
</div>

<%@include file="../Footer/footer.jsp" %>
</body>
</html>