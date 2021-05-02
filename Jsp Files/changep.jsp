<%-- 
    Document   : dprofile
    Created on : 27 Jun, 2019, 11:34:20 AM
    Author     : ABHIJEET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HELPING HANDS</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <!-- Look of this document is driven by a CSS referenced by an href attribute. See http://www.w3.org/TR/xml-stylesheet/ -->
        <link rel="StyleSheet" type="text/css" href="http://DESKTOP-824DB2B:8082/resource/file%3A/D%3A/netbeans/ho/web/mainbody.css" media="screen" >      
        <!-- Look of this document is driven by a CSS referenced by an href attribute. See http://www.w3.org/TR/xml-stylesheet/ -->                      
        <link rel="StyleSheet" type="text/css" href="http://DESKTOP-824DB2B:8082/resource/file%3A/D%3A/netbeans/ho/web/menu.css" media="screen" >   
      <!-- Look of this document is driven by a CSS referenced by an href attribute. See http://www.w3.org/TR/xml-stylesheet/ -->
  <!--        <link rel="StyleSheet" type="text/css" href="http://DESKTOP-824DB2B:8082/resource/file%3A/D%3A/netbeans/ho/web/slider.css" media="screen" >  -->
        <!-- Look of this document is driven by a CSS referenced by an href attribute. See http://www.w3.org/TR/xml-stylesheet/ -->
        <link rel="StyleSheet" type="text/css" href="http://DESKTOP-824DB2B:8082/resource/file%3A/D%3A/netbeans/ho/web/style.css" media="screen" >
    
        <style>
            body {
                margin-left: 0px;
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
            }
        </style>    
    </head>
    <%@page import="java.sql.*"%> 
    <body>
        <div id="container">
            <div id="header">
                <div id='logo'><img src="logo1_1.png" height='134' width="175" alt='logo'></div>
                <div id='banner'>
                    <img src="bann2.png" height='122' width="800" alt='banner'> 
                    <div id="bottom"><i>Spreading Hope</i>
                    </div>                  
                </div>
                <a href="#" class="btn btn-full">DONATE NOW</a>
                <div class="search_box">
                    <input type="text" placeholder="Search Here">
      <i class="fas fa-search"></i>
  </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href='index.html'>Home</a></li>
                    <li><a href='#'>Top Donors</a></li>
                    <li><a href='#'>Events</a>
                        <ul>
                            <li><a href='#'>Upcoming Events</a></li>
                            <li><a href='#'>Past Events</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>Get Involved</a>
                        <ul>
                            <li><a href="#">Individual</a>
                                <ul>
                                    <li><a href="#">Donate</a></li>
                                    <li><a href="#">Campaigns</a></li>
                           <!--         <li><a href="#">Volunteering</a></li>  -->
                                </ul>
                            </li>
                            <li><a href="#">Corporates</a></li>
                            <li><a href="#">Institutions</a></li> 
                        </ul>
                    </li>
                    
                    <li><a href='#'>About</a>
                        <ul>
                            <li><a href='#'>History</a></li>
                            <li><a href='#'>Vision and Mission</a></li>
                            <li><a href='#'>Team</a></li>
                            <li><a href='#'>Media Center</a></li>
                            <li><a href='#'>Chairman Message</a></li>
                        </ul>
                    </li>
                    <li><a href='#'>Contact Us</a></li>
                    <li><a href='#'>Enquiry</a></li>
                    <li><a href='#'>Media</a>
                        <ul>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Photo Gallery</a></li>
                            <li><a href="#">Video Gallery</a></li>
                        </ul>
                    </li>
                 <!--   <li><input type="text" name='searchbox' class="search" placeholder="Search Here"></li>   -->
                </ul>
            </div>
            <div id="ref"></div>    
        </div>
        <div style="width: 300px;height: 500px;float: left;margin-left: 26px;margin-top: 30px">
            <%
            
             String usertype=(String)session.getAttribute("ut");
            if(usertype.equals("admin"))
              {
                %>
                
                    <a href="dprofile.jsp">Profile</a> <br>
            <a href="#">Donation History</a> <br>
            <a href="#">Change Password</a> <br>
            <a href="logout.jsp">Logout</a>
                   <%
              }
              else if(usertype.equals("donar"))
              {
                   %>
              
                    <a href="dprofile.jsp">Profile</a> <br>
            <a href="#">Donation History</a> <br>
            <a href="#">Change Password</a> <br>
            <a href="logout.jsp">Logout</a>
            
                   <%
              }
            %>
        </div>
        <div style="width: 300px;height: 500px;float: left;margin-left: 26px;margin-top: 30px">
            <form action="changepass.jsp">
                Old Password <input type="text" name="op" value="" /><br>
                New Password <input type="text" name="np" value="" /><br>
                <input type="submit" value="Change Password" />
            </form>

        </div>
    </body>
</html>
