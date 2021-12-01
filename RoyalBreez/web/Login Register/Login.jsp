<%-- 
    Document   : login
    Created on : Dec 1, 2021, 1:02:12 PM
    Author     : Hashini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    <style>
   body{
    font-family: calibri;
    background-image:url("https://i.insider.com/5c3f8f8dbde70f06700cdbf9?width=750&format=jpeg&auto=webp?auto=compress&cs=tinysrgb&dpr=2&w=500");
    font-family:"Open Sans", Helvetica, Arial, sans-serif;
    background-repeat: no-repeat;
    background-size: 100%;
}
.tblLogin {
	border:0px;
    background: rgba(255,255,255,0.6);
    border-radius: 10px;
    margin-top: 310px;
}
.tableheader {
    font-size: 24px;
}
.tableheader td {
    padding: 20px;
}
.tablerow td{
	text-align:center;
}
.message {
color: #FF0000;
font-weight: bold;
text-align: center;
width: 100%;
}
.login-input {
	border: #CCC 1px solid;
    padding: 10px 20px;
}
.btnSubmit {
	padding: 10px 20px;
    background:black;
    border: 0px;
    color: white;
    font-size: 18px;
    font-weight: 500;
    border-radius: 5px;
}
#bDiv{
    border:0px;
    background: rgba(255,255,255,0.6);
    width: 500px;
    height: 90px;
    border-radius: 10px;
}
.btn{
    padding: 10px 20px;
    background: black;
    border: 0px;
    color:white;
    font-size: 18px;
    font-weight: 500;
    border-radius: 5px;
}
#lbl{
    font-size: 20px;
    font-weight: 400;
}

 
</style>
</head>
<body>
<form name="frmUser" method="post" action="">
	
		<table border="0" cellpadding="10" cellspacing="1" width="500" align="center" class="tblLogin">
			<tr class="tableheader">
				<td align="center" colspan="2">Login</td>
			</tr>
			<tr class="tablerow">
			<td>
				<input type="text" name="Email" placeholder="Email" class="login-input" required></td>
			</tr>
			<tr class="tablerow">
			<td>
				<input type="password" name="password" placeholder="Password" class="login-input" required></td>
			</tr>
			<tr class="tableheader">
				<td align="center" colspan="2"><input type="submit" name="submit" value="Submit" class="btnSubmit"></td>
			</tr
                        <tr><td><p><a href="Register.jsp">Don't have an account?</a></p></td></tr>
		</table>
</form>

</body>
</html>
