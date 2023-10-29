<html>

<style>
 a
 {
   font-family:lucida calligraphy;
   font-size:20px;
   text-decoration:none;
   color:DARKGREEN;
 }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>



	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
  </div>
</nav>



      <div>
      <div>
       <img src='../images/user.jpg' width="80%" height="31%" style="float:left"/>
      </div>
      <div>
	<div align='center' style='margin-top:10px;'>	
    	<img src='profilepic/<%=session.getAttribute("pic")%>' width="18%" height="31% style="border:solid black">
	</div>
      </div>
      </div><br>
	<div align='center' style='color:rgb(0,75,226) ;font-size:26px'><b>Welcome,<%=session.getAttribute("name")%></b></div>
         <hr style="border:2px solid red;"/>
   	<table width="100%" align="center">
	<tr>
	   <td><a href="userhome.jsp" id='home'>Home</a></td><td><a href="testreq.jsp">Test Request</a></td>
	   <td><a href="previousres.jsp" id='tr'>Test Report</a></td><td><a href="testcode.jsp" id='tc'>Test Codes</a></td>
	   <td><a href="entercode.jsp">Start Test</a></td><td><a href="editprofile.jsp" id='ep'>Edit Profile</a></td>
	   <td><a href="logout.jsp">Logout</a></td>
	</tr>
          </table>
      <hr style="border:2px solid red;"/>
    </body>
</html>