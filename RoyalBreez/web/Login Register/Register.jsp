<%-- 
    Document   : Register
    Created on : Dec 1, 2021, 1:03:13 PM
    Author     : Hashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Sign Up</title>
	
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

body {    background-image:url("https://i.insider.com/5c3f8f8dbde70f06700cdbf9?width=750&format=jpeg&auto=webp?auto=compress&cs=tinysrgb&dpr=2&w=500");
	font-family:"Open Sans", Helvetica, Arial, sans-serif;
	font-weight:300;
	font-size: 12px;
	line-height:30px;
	color:#777;
	
    background-repeat: no-repeat;
    background-size: 100%;
    margin-top: 200px;
}

.container {
	max-width:400px;
	width:100%;
	margin:0 auto;
  position:relative;
  margin-top: -150px;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px "Open Sans", Helvetica, Arial, sans-serif; }

#contact {
	background:rgba(255,255,255,0.6);
	padding:25px;
	margin:50px 0;
        border-radius: 10px;
}

#contact h3 {
	color: black;
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

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact textarea {
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover, #contact input[type="tel"] :hover, #contact textarea:hover {
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
	background:black;
	color:#FFF;
	margin:0 0 5px;
	padding:10px;
	font-size:15px;
}

#contact button[type="submit"]:hover {
	background:#454545;
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
#al{
 font-size: 13px;
 font-weight: 800px;
}
.hold{
    width: 350px;
    height: 40px;
    border: 1px solid rgb(206, 206, 206);
}

    </style>
</head>
<body>
    <div class="container">  
        <form id="contact" action="../RegisterServlet" method="post">
          <h3 style="margin-bottom: 10px;">Create User</h3>
          <fieldset>
            <input name="name" placeholder="Name" type="text" tabindex="1" required autofocus>
          </fieldset>
          <fieldset>
            <input name="email" placeholder="Your Email Address" type="email" tabindex="3" required>
          </fieldset>
          <fieldset>
            <input name="password" placeholder="   Password" type="password" tabindex="4" required autofocus class="hold">
          </fieldset>
          <br>

          <fieldset>
            <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
          </fieldset>
        </form>
    </div>
</body>
</html>
