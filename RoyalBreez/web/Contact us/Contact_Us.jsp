<%-- 
    Document   : Contact_Us
    Created on : 26-Nov-2021, 15:33:29
    Author     : IsuraD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ContactUs</title>
     <style>
            
            @import url(https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600);

* {
	margin:0;
	padding:0;
	box-sizing:border-box;
	-webkit-box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-font-smoothing:antialiased;
	-moz-font-smoothing:antialiased;
	-o-font-smoothing:antialiased;
	font-smoothing:antialiased;
	text-rendering:optimizeLegibility;
}

body {
	font-family: 'Poppins', sans-serif;
	font-weight:300;
	font-size: 12px;
	line-height:30px;
	color:#777;
	background-color:#232323;
	background-image: url('https://i.insider.com/5c3f8f8dbde70f06700cdbf9?width=750&format=jpeg&auto=webp?auto=compress&cs=tinysrgb&dpr=2&w=500');
	background-size: cover;
}

.container {
	max-width:400px;
	width:100%;
	margin:0 auto;
	position:relative;
}

#contact input[type="text"], #contact input[type="email"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px 'Poppins', sans-serif; }

#contact {
	background:fade(#F9F9F9,85);
	padding:25px;
	margin:80px 0;
}

#contact h3 {
	color: #FFFFFF;
	display: block;
	font-size: 30px;
	font-weight: 400;
}

#contact h4 {
	margin:5px 0 15px;
	display:block;
	font-size:13px;
        color: #FFFFFF;
}

fieldset {
	border: medium none !important;
	margin: 0 0 10px;
	min-width: 100%;
	padding: 0;
	width: 100%;
}

#contact input[type="text"], #contact input[type="email"], #contact textarea {
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover, #contact textarea:hover {
	-webkit-transition:border-color 0.3s ease-in-out;
	-moz-transition:border-color 0.3s ease-in-out;
	transition:border-color 0.3s ease-in-out;
	border:1px solid #AAA;
}

#contact textarea {
	height:100px;
	max-width:100%;
  resize:none;
}

#contact button[type="submit"] {
	cursor:pointer;
	width:100%;
	border:none;
	background:#000;
	color:#FFFFFF;
	margin:0 0 5px;
	padding:25px 10px;
	font-size:15px;
	text-transform: uppercase;
}

#contact button[type="submit"]:hover {
	background:#51707a;
	-webkit-transition:background 0.3s ease-in-out;
	-moz-transition:background 0.3s ease-in-out;
	transition:background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active { box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.5); }

#contact input:focus, #contact textarea:focus {
	outline:0;
	border:1px solid #999;
}
::-webkit-input-placeholder {
 color:#888;
}
:-moz-placeholder {
 color:#888;
}
::-moz-placeholder {
 color:#888;
}
:-ms-input-placeholder {
 color:#888;
}

label.error{
	color: darkred;
	padding-left: 10px;
	font-weight: bold;
}
input.error{
	border-color: darkred !important;
}
        </style>
        <script>
            @import url(https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600);

* {
	margin:0;
	padding:0;
	box-sizing:border-box;
	-webkit-box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-font-smoothing:antialiased;
	-moz-font-smoothing:antialiased;
	-o-font-smoothing:antialiased;
	font-smoothing:antialiased;
	text-rendering:optimizeLegibility;
}

body {
	font-family:'Poppins', sans-serif;
	font-weight:300;
	font-size: 12px;
	line-height:30px;
	color:#777;
	background-color:#232323;
	background-image: url('https://i.insider.com/5c3f8f8dbde70f06700cdbf9?width=750&format=jpeg&auto=webp?auto=compress&cs=tinysrgb&dpr=2&w=500');
	background-size: cover;
}

.container {
	max-width:400px;
	width:100%;
	margin:0 auto;
	position:relative;
}

#contact input[type="text"], #contact input[type="email"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px 'Poppins', sans-serif; }

#contact {
	background:fade(#F9F9F9,85);
	padding:25px;
	margin:80px 0;
}

#contact h3 {
	color: #000;
	display: block;
	font-size: 30px;
	font-weight: 400;
}

#contact h4 {
	margin:5px 0 15px;
	display:block;
	font-size:13px;
}

fieldset {
	border: medium none !important;
	margin: 0 0 10px;
	min-width: 100%;
	padding: 0;
	width: 100%;
}

#contact input[type="text"], #contact input[type="email"],  #contact textarea {
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover, #contact textarea:hover {
	-webkit-transition:border-color 0.3s ease-in-out;
	-moz-transition:border-color 0.3s ease-in-out;
	transition:border-color 0.3s ease-in-out;
	border:1px solid #AAA;
}

#contact textarea {
	height:100px;
	max-width:100%;
  resize:none;
}

#contact button[type="submit"] {
	cursor:pointer;
	width:100%;
	border:none;
	background:#000;
	color:#FFF;
	margin:0 0 5px;
	padding:25px 10px;
	font-size:15px;
	text-transform: uppercase;
}

#contact button[type="submit"]:hover {
	background:#09C;
	-webkit-transition:background 0.3s ease-in-out;
	-moz-transition:background 0.3s ease-in-out;
	transition:background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active { box-shadow:inset 0 1px 3px rgba(0, 0, 0, 0.5); }

#contact input:focus, #contact textarea:focus {
	outline:0;
	border:1px solid #999;
}
::-webkit-input-placeholder {
 color:#888;
}
:-moz-placeholder {
 color:#888;
}
::-moz-placeholder {
 color:#888;
}
:-ms-input-placeholder {
 color:#888;
}

label.error{
	color: darkred;
	padding-left: 10px;
	font-weight: bold;
}
input.error{
	border-color: darkred !important;
}
            </script>
            
    </head>
    <body>
      <div class="container">  
  <form id="contact" action="./ContactUsServlet" method="post">
    <h3>Contact Us</h3>
    <h4>Contact us today!</h4>
    <fieldset>
      <input placeholder=" Name" type="text" name="name" >
    </fieldset>
    <fieldset>
      <input placeholder="Email Address" type="email" name="email" >
    </fieldset>

      <textarea placeholder="Type your message here...."  name="message"></textarea>
    </fieldset>
    <fieldset>
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Send now</button>
    </fieldset>
  </form>
 
  
</div>
    </body>
</html>
