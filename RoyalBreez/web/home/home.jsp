<%-- 
    Document   : home
    Created on : 12-Dec-2021, 10:47:30
    Author     : IsuraD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RoyalBreez Hotel</title>
    
        <link rel="icon" type="image/png" sizes="16x16" href="../images/icon.png">
        
        <link rel="stylesheet" href="../home/home.css">
        
    <link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Satisfy&family=Ubuntu:wght@300;400&display=swap" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">  

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu&display=swap" rel="stylesheet"> 
    </head>
    <body>
        
        <%@include file="../NavBar/nav.jsp" %>
        
        <section class="banner" style=" background: url(../images/mainPic.png); position: relative; width: 100%; height: 120vh;background-size: 100% 100%;"></section>

     <!-- Home page Content Start -->

     <div class="note01">
       <center  id="uda-titel"><p>Our Hotel</p></center>

       <p >
        <center id="our_content">
           <i>
           Royal Breeze us always serve our service with highest quality and we have taken all necessary precautions to ensure<br> that guests are safe from the moment they step inside our premises till they check out.<br>We are committed to making your holiday a memorable one without<br> compromising luxury, comfort and indulgence here at Royal Breeze.
           </i>
        </center>
        </p>
     </div>

     <div class="photo_col" style="float: right; padding-left: 10px; ">


          
           <div class="note02_2">
               <img  src="../images/MainSide.png" alt="logo">
           </div>


    </div>

     <div class="photo_col">
         <center>
             <p id="slideshow_maintext"></p>
             <br> <br> <br> <br>
             <p id="slideshow_context"><i><b>"</b> With technology enriched safety measures,<br>augmented sanitation,<br>contactless services, social distancing and<br>fully trained staff,<br> we are committed to making your holiday<br>a memorable one without<br>compromising luxury, comfort and indulgence here at <br><b>Royal Breeze</b>.<b>"</b></i></p>
         </center>
     </div>



     <div id="view-button">
        <br><br>
        <a href="#" id="view-more" target="_blank" class="viewmore-button"><span>&diams; View More Photos</span></a>
    </div>


<!-- cards starts -->
    <div class="testOI" style="float: right; padding-bottom: 10px; overflow: auto;">
        
        <div class="my-2 mx-auto p-relative bg-white shadow-1 blue-hover" style="width: 90%; overflow: hidden; border-radius: 1px;">
            <img src="../images/Homeshalls.png" alt="halls_jpg"    
            class="d-block w-full">

  <div class="px-2 py-2">
    <p class="mb-0 small font-weight-medium text-uppercase mb-1 text-muted lts-2px">
      Halls
    </p>

    <h1 class="ff-serif font-weight-normal text-black card-heading mt-0 mb-1" style="line-height: 1.25;">
      The Wonderful Halls
    </h1>

    <p class="mb-1">
      A hall from us for the important moment of your life &hellip;
    </p>

  </div>

  <a href="#0" class="text-uppercase d-inline-block font-weight-medium lts-2px ml-2 mb-2 text-center styled-link">
    View Halls
  </a>
  <a href="#0" class="text-uppercase d-inline-block font-weight-medium lts-2px ml-2 mb-2 text-center styled-link" style="float: right; padding-right: 50%;">
    Book Halls
  </a>
  </div>

    </div>

    <div class="testOI">

        <div class="my-2 mx-auto p-relative bg-white shadow-1 blue-hover" style="width: 90%; overflow: hidden; border-radius: 1px;">
            <img src="../images/02.png" alt="rooms_jpg"    
            class="d-block w-full">

  <div class="px-2 py-2">
    <p class="mb-0 small font-weight-medium text-uppercase mb-1 text-muted lts-2px">
      Rooms
    </p>

    <h1 class="ff-serif font-weight-normal text-black card-heading mt-0 mb-1" style="line-height: 1.25;">
      Our stunning rooms for your Holidays
    </h1>

    <p class="mb-1">
      Book one of our precious rooms to enjoy the comforts of a wonderful life &hellip;
    </p>

  </div>

  <a href="#0" class="text-uppercase d-inline-block font-weight-medium lts-2px ml-2 mb-2 text-center styled-link">
    View Rooms
  </a>
  <a href="#0" class="text-uppercase d-inline-block font-weight-medium lts-2px ml-2 mb-2 text-center styled-link" style="float: right; padding-right: 50%;">
    Book Rooms
  </a>
  </div>

    </div>
<!-- cards ends -->




    <!--  Home page Content End -->
        
    <%@include file="../Footer/footer.jsp" %>
        
        
    </body>
</html>
