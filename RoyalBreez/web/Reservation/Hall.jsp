<%-- 
    Document   : Hall
    Created on : Dec 3, 2021, 10:45:58 AM
    Author     : Thanushi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Halls</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
         <link rel="icon" type="image/png" sizes="16x16" href="../images/icon.png">
  
    <style>
* {
  box-sizing: border-box;
  font-family: 'Roboto', sans-serif;
  list-style: none;
  margin: 0;
  outline: none;
  padding: 0;
}

a {
  text-decoration: none;
}

body, html {
  height: 100%;
}

body {
	background: #111638;
	font-family: 'Roboto', sans-serif;
}

.container {
    padding-top: 100px;
	align-items: center;
	display: flex;
	height: 750px;
	justify-content: center;
	margin: 0 auto;
	max-width: 1000px;
	width: 100%;
}

.card {
	background: #fff;
	box-shadow: 0 10px 15px rgba(0, 0, 0, .2);
	display: flex;
	height: 650px;
	overflow: hidden;
	width: 100%;
}

.slider {
	transition: width .4s ease-out;
	width: 65%;
}

.slider ul {
	height: 650px;
	width: 100%;
}


.content {
	color: #444f5a;
	padding: 35px;
	transition: width .4s ease-out;
	width: 35%;
}

.content h1 {
	color: #3e4149;
	display: inline-block;
	font-weight: 400;
	margin-bottom: 30px;
}

.content p {
	font-weight: 300;
	line-height: 1.4em;
	margin-bottom: 15px;
	text-align: justify;
}

.content h3 {
	color: #3e4149;
	margin: 20px 0;
}

.content ul {
	margin-bottom: 30px;
}

.content li {
	margin: 10px 0;
}

.button {
	background: #8C97E5;
	border: none;
	color: #fff;
	display: block;
	font-weight: 500;
	letter-spacing: 4px;
	padding: 20px 0;
	text-align: center;
	text-transform: uppercase;
	width: 100%;
}

.button:hover {
	background: #EAC50C;
	cursor: pointer;
}

.button:active {

}

.booking {
	display: flex;
	position: relative;
}

.booking i {
	color: rgba(0, 0, 0, .4);
	font-size: 1.5em;
	position: absolute;
	right: 0;
	top: -10px;
}

.booking i:hover {
	color: #3e4149;
	cursor: pointer;
}

.room-info, .payment {
	width: 50%;
}

.room-info {
	border-right: 1px solid rgba(0, 0, 0, .1);
	padding-right: 30px;
}

.payment {
	padding-left: 30px;
}

.booking label {
	display: block;
	margin-bottom: 10px;
}

.booking input {
	border-radius: 0;
	border: none;
	border-bottom: 1px solid rgba(0, 0, 0, .3);
	font-size: 1.2em;
	padding: 15px 10px;
	transition: border .1s ease;
	width: 100%;
}

.booking input:focus {
	border-bottom: 2px solid #ff9999;
}

.inline-fields {
	display: flex;
	justify-content: space-between;
	margin: 40px 0;
}

.inline-fields div {
	width: 45%;
}

.terms {
	margin: 40px 0 20px;
	display: flex;
}

.terms input {
	border: 1px solid rgba(0, 0, 0, .3);
	display: inline-block;
	margin: 10px 20px 10px 0;
	width: auto;
}

.terms a {
	font-weight: 500;
	transition: color .1s ease;
}

.terms a:hover {
	color: #ff9999;
}

</style>
<script>
  var app = {

	settings: {
		booking: $('.booking'),
		content: $('.content'),
		description: $('.description'),
		payment: $('.payment'),
		slider: $('.slider')
	},

	init: function() {
		instance = this;
		settings = this.settings;

		settings.booking.hide();
		this.bindUIActions();
	},

	swap: function(start, end, currentView, desiredView) {
		settings.slider.css('width', start);
		settings.content.css('width', end);

		currentView.fadeOut(200);
		
		setTimeout(function(){
			desiredView.fadeIn(600);
		}, 100);
	},

	bindUIActions: function() {

		settings.description.find('button').on('click', function(){
			instance.swap('20%', '80%', settings.description, settings.booking);
		});

		settings.booking.find('.cancel').on('click', function(){
			instance.swap('65%', '35%', settings.booking, settings.description);
		});

		settings.booking.find('button').on('click', function(){
			instance.swap('65%', '35%', settings.booking, settings.description);

			settings.description.find('button').html('Booked <i class="ion-checkmark"></i>')
				   .attr('disabled', 'disabled');
		});

	}
};

app.init();
    </script>
    </head>
    
    <body>
<!-- Luxury Hall-->

<%@include file="../NavBar/nav.jsp" %>
<div style="height: 100px;" ></div>

<div class="container">
    <div class="card">
      <div class="slider">
        <ul>
            <li style="background: url(https://www.thegoldencrownhotel.com/images/site-specific/golden_crown/weddings/windsor-ballroom-1.jpg) center; background-size: cover; height: 650px; width: 100%;">    
            </li>
        </ul>
      </div>

      <div class="content">
        <div class="description">
          <h1>Luxury Hall</h1>
          <p>
            There is a huge parking space back side of the hotel. Inside the hall there is about 500 to 600 seating capacity. Our services is great and the food is delicious. This place is suitable for any kind of occasion such as weddings or company parties.
          </p>

          <h3>Features</h3>
          <ul>
            
<li>Dance Floor</li>
<li>Podium</li>
<li>Free WiFi</li>
<li>For wedding functions </li>
<li>Oil lamp </li>
<li>Table for cake structure </li>
<li>Table for champagne fountain </li>
<li>Chair covers with Bows</li>
</ul>
          

          <button class="button">Book Now</button>
        </div>
        
      </div>

    </div>
  </div>

<!--Grand Hall-->


<div class="container">
    <div class="card">
      <div class="slider">
        <ul>
          <li style="background: url(https://cinnamonweb.blob.core.windows.net/cinnamonweb-prd/event_packages/grand-oak-room-package-623X400_01.jpg) center; background-size: cover; height: 650px; width: 100%;"></li>
        </ul>
      </div>

      <div class="content">
        <div class="description">
          <h1>Grand Hall</h1>
          <p>
            Nice location makes it more meaningful. In our Royal Breez hotel has another hall called Grand Hall. There are Two separate floors for men and women, if you're looking for.
            It can manage around 350 pax. All Clean and hygienic place and kept & maintained well. This hall Suggested for wedding occasions, parties and etc..
          </p>

          <h3>Features</h3>
          <ul>
<li>Dance Floor</li>
<li>For wedding functions </li>
<li>Oil lamp </li>
<li>Table for cake structure </li>
<li>Table for champagne fountain </li>
<li>Chair covers with Bows</li>
          </ul>

          <button class="button">Book Now</button>
        </div>
        
        </div>
      </div>

    </div>
  

<!-- Banquet Hall-->

<div class="container">
    <div class="card">
      <div class="slider">
        <ul>
          <li style="background: url(https://media.timeout.com/images/103937889/630/472/image.jpg) center; background-size: cover; height: 650px; width: 100%;"></li>
        </ul>
      </div>

      <div class="content">
        <div class="description">
          <h1>Banquet Hall</h1>
          <p>
           The Royal Breez Hotel has another special reception hall called Banquet Hall. This reception is divided into 3 main areas. An internal A/C Hall, an open seating garden area, and roofed Non A/C seating. It can manage around 200 pax.
          </p>

          <h3>Features</h3>
          <ul>
<li>Dance Floor</li>
<li>For wedding functions </li>
<li>Oil lamp </li>
<li>Table for cake structure </li>
<li>Table for gifts </li>
<li>Chair covers with Bows</li>
          </ul>

          <button class="button">Book Now</button>
        </div>
        
        </div>
      </div>

    </div>
  
 <%@include file="../Footer/footer.jsp" %>

    </body>
</html>

