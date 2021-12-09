<%-- 
    Document   : Room
    Created on : Dec 3, 2021, 9:29:49 AM
    Author     : Thanushi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Rooms</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
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
	align-items: center;
	display: flex;
	height: 100%;
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

.slider li:first-of-type {
	background: url(http://www.moscow-hotels.net/images/hotels/maxima-panorama-hotel/accommodation/rooms/single-room.jpg) center;
	background-size: cover;
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
<!-- Single Room-->



<div class="container">
    <div class="card">
      <div class="slider">
        <ul>
          <li></li>
        </ul>
      </div>

      <div class="content">
        <div class="description">
          <h1>Single Room</h1>
          <p>
            Our comfortable single rooms are just the right size if you are travelling alone. Similar to all the other rooms in the Royal Breez Hotel, the single room is fully equipped with all comforts.
In addition to the comfortable hotel lounge, the room is equipped with a Smart TV, Wi-Fi and iPod docking station. With a size of 14.5 m², our single rooms offer all the space and comfort you need during your stay in Royal Breez.
          </p>

          <h3>Features</h3>
          <ul>
            
<li>40" Smart TV</li>
<li>Air conditioning</li>
<li>Free WiFi</li>
<li>Fridge</li>
<li>iPod docking station</li>
</ul>
          

          <button class="button">Book Now</button>
        </div>
        
      </div>

    </div>
  </div>
<!-- Twin Room-->


<div class="container">
    <div class="card">
      <div class="slider">
        <ul>
          <li></li>
        </ul>
      </div>

      <div class="content">
        <div class="description">
          <h1>Twin Room</h1>
          <p>
            The sleek and warm interior of our rooms invites you to relax and enjoy what the Royal Breez Hotel has to offer.
The comfort twin room has a size of 17.5 m². In addition to the two comfy beds, you will have plenty of room to relax. With a book, a movie or a drink from the lounge, for example. The rooms are fully equipped for a relaxing stay.
          </p>

          <h3>Features</h3>
          <ul>
            <li>40" Smart TV</li>
<li>Air conditioning</li>
<li>Free WiFi</li>
<li>Fridge</li>
<li>iPod docking station</li>
<li>Nespresso machine with free coffee and tea facilities</li>
          </ul>

          <button class="button">Book Now</button>
        </div>
        
        </div>
      </div>

    </div>
  

<!-- Double Room-->

<div class="container">
    <div class="card">
      <div class="slider">
        <ul>
          <li></li>
        </ul>
      </div>

      <div class="content">
        <div class="description">
          <h1> Double Room</h1>
          <p>
           Warmth, luxury and peace meet you in our charming comfort double room. In addition to the plush beds, the room is equipped with all amenities the Royal Breez Hotel has to offer.
From docking station to Nespresso machine with free coffee and tea and from rain shower to room service. In short, everything for a lovely stay on the edge of the Royal Breez.
          </p>

          <h3>Features</h3>
          <ol>
<li>40" Smart TV</li>
<li>Air conditioning</li>
<li>Free WiFi</li>
<li>Fridge</li>
<li>iPod docking station</li>
<li>Nespresso machine with free coffee and tea facilities</li>
          </ol>

          <button class="button">Book Now</button>
        </div>
        
        </div>
      </div>

    </div>
  

    </body>
</html>

