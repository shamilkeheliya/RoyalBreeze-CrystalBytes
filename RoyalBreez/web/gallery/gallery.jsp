<%-- 
    Document   : gallery
    Created on : Dec 12, 2021, 3:47:36 PM
    Author     : User
--%>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Gallery</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../images/icon.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../gallery/gallery.css">
  
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">  

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu&display=swap" rel="stylesheet"> 
  
</head>

<body>
 <%@include file="../NavBar/nav.jsp" %>
<section class="gallery">
	<div class="container">
		<div class="row">
			<div class="gallery-filter">
				<span class="filter-item active" data-filter="all">all</span>
				<span class="filter-item" data-filter="normal">Normal</span>
				<span class="filter-item" data-filter="halls">Halls</span>
				<span class="filter-item" data-filter="rooms">Rooms</span>
			</div>
		</div>
		<div class="row">
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
                                    <img src="../img/normal1.jpg" alt="shoe">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal2.jpg" alt="headphone">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal3.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item rooms">
				<div class="gallery-item-inner">
                                    <img src="../img/rooms2.jpg" alt="headphone">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item rooms">
				<div class="gallery-item-inner">
					<img src="../img/rooms3.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item rooms">
				<div class="gallery-item-inner">
					<img src="../img/rooms4.jpg" alt="headphone">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item rooms">
				<div class="gallery-item-inner">
					<img src="../img/rooms5.jpg" alt="headphone">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal4.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal5.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal6.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item halls">
				<div class="gallery-item-inner">
                                    <img src="../img/hall1.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end --><!-- gallery item start -->
			<div class="gallery-item halls">
				<div class="gallery-item-inner">
					<img src="../img/hall2.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item halls">
				<div class="gallery-item-inner">
					<img src="../img/hall3.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item halls">
				<div class="gallery-item-inner">
					<img src="../img/hall4.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal7.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal8.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal9.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
			<!-- gallery item start -->
			<div class="gallery-item normal">
				<div class="gallery-item-inner">
					<img src="../img/normal10.jpg" alt="camera">
				</div>
			</div>
			<!-- gallery item end -->
		</div>
	</div>
</section>
<script>
	const filterContainer = document.querySelector(".gallery-filter"),
 galleryItems = document.querySelectorAll(".gallery-item");

 filterContainer.addEventListener("click", (event) =>{
   if(event.target.classList.contains("filter-item")){
   	 // deactivate existing active 'filter-item'
   	 filterContainer.querySelector(".active").classList.remove("active");
   	 // activate new 'filter-item'
   	 event.target.classList.add("active");
   	 const filterValue = event.target.getAttribute("data-filter");
   	 galleryItems.forEach((item) =>{
       if(item.classList.contains(filterValue) || filterValue === 'all'){
       	item.classList.remove("hide");
       	 item.classList.add("show");
       }
       else{
       	item.classList.remove("show");
       	item.classList.add("hide");
       }
   	 });
   }
 });
</script>
 <%@include file="../Footer/footer.jsp" %>
</body>
</html>
