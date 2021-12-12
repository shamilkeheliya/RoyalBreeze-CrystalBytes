<%-- 
    Document   : Nav_Bar
    Created on : 26-Nov-2021, 15:35:29
    Author     : IsuraD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="../NavBar/nav.css">

    <link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Satisfy&family=Ubuntu:wght@300;400&display=swap" rel="stylesheet">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">  

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat&family=Ubuntu&display=swap" rel="stylesheet"> 
        <title></title>
    </head>
    <body>
        
        <header>
            <a href="../home/home.jsp" class="logo"><img src="../images/logo.png" style="width: 60px;" alt=""></a>
    <ul>
        <li><a href="../home/home.jsp"><b>Home</b></a></li>
        <li><a href="../gallery/gallery.jsp"><b>Gallery</b></a></li>
        <li><a href="../Reservation/Room.jsp"><b>Rooms</b></a></li>
        <li><a href="../Reservation/Hall.jsp"><b>Halls</b></a></li>
        <li><a href="../Contact us/Contact_Us.jsp" target="_blank"><b>Contact Us</b></a></li>
        <li><a href="../Profile/Profile.jsp" target="_blank"><b>Profile</b></a></li>
    </ul>
</header>
     <script type="text/javascript">
        window.addEventListener("scroll",function(){
            var header = document.querySelector("header");
            header.classList.toggle("sticky",window.scrollY > 0);
        }) 
     </script>
        
    </body>
</html>

