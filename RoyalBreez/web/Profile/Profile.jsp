<%-- 
    Document   : Profile
    Created on : 26-Nov-2021, 15:35:55
    Author     : IsuraD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             .x {
            text-align: center;
            padding-top: 40px;
            color: darkorange;
            font-weight: bold;
        }

        .dev-topic h1{color: rgb(6, 35, 63);
          font-size: 50px;
          text-align: center;
          margin-top: 90px;
          margin-bottom: 30px;}


          .flex-container {
    display: flex;
    flex-wrap: wrap;
    background-color:rgb(3, 10, 48);
    margin-top: 20px;
    margin-right: 30px;
    margin-left: 20px;
    margin-bottom: 30px;
    height: 700px;

  }

  .form-label{
      font-size: 25px;
      font-style:Montserrat;
      font-weight:bolder;
  }
  .flex-container > div {
    background-color:darkorange;
    margin-left: 60px;
    margin-right: 65px;
    padding: 90px;
    font-size: 10px;
    margin-top: 50px;
    margin-bottom: 90px;
    flex-basis: 26%;
    
    border-radius: 30px;
  }

  .top1 h1{text-align:  left;
color:black;
font-size: 40px;
font-family: comic sans ms;
margin-top: 2px;}

 
.button {
  background-color: #0ef0f0; /* Green */
  border: none;
  color: rgb(7, 6, 6);
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  align: center;
}

.button1 {
  background-color: #1f095e ; 
  color: white; 
  border: 2px solid  #1f095e;
}

.button1:hover {
  background-color: #f0c025;
  color: rgb(247, 240, 240);
}


.table, th, td {
  border: 0;
  padding-right: 25px;
  padding-bottom: 20px;
  margin-left: 40px;
   
  
}
        </style>
    </head>
    <body>
         <div class="flex-container">
      
    <div>
        <div class="top1"><h1>Room reservation</h1></div><br><br>
        <table>
        <tr>
            <th><span class="form-label">Check In</span></th>
            <th><input class="form-control" type="date" required></th>
            </tr>

         <tr>
           <th><span class="form-label">Check out</span></th> 
            <th><input class="form-control" type="date" required></th>
         </tr>

        

            <tr>
                <div class="form-group"> 
                <th><span class="form-label">Room Type</span</th>
                <th> <select class="form-control">
                  <option></option>
                  <option>luxory room </option>
                  <option> Delux room</option>
              </select>
              <span class="select-arrow"></span></th>
          </div>
              </tr>
         
        </table>
       

    <br><br><br><br><br><br>
    <button class="button button1">Book Now </button>
   </div>

    
   <div>
       <div class="top1"><h1>Hall reservation</h1></div>
      

       <table>
        <tr>
          <div class="form-group"> 
          <th><span class="form-label">Hall Type</span</th><br>
          <th> <select class="form-control">
            <option></option>
            <option>Grand ballroom</option>
            <option>ballroom </option>
        </select>
        <span class="select-arrow"></span></th>
    </div>
        </tr>
        <br><br><br><br>  

        <tr>
         <td><span class="form-label"> Date</span><br>
          <td><input class="form-control" type="date" required></td>
        </tr>
    </div>
    </table>

     <br><br><br><br><br><br><br><br><br>
    <button class="button button1">Book Now </button>


</div>
    </body>
</html>
