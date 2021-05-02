<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
                            <li><a href="individual.html">Individual</a>
                                <ul>
                                    <li><a href="individual.html#">Donate</a></li>
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
                    <li><a href='enquiry.html'>Enquiry</a></li>
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
        
        <div style="margin-left: 38px;margin-top: 33px">
            <center>  <p style="font-size: 30px;font-weight: bold;color: darkorchid">   OUR DONORS </p>
            </center>        
        </div>
        <div style="margin-left: 93px">
            <p style="font-weight: bold;font-size: 24px">   These people offered there help and we were glad to let them join us. </p>
        </div>
        
        <div style="height: 420px">
        <%
            try
            {
                String im,nm,oc;
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/db1");
                
                PreparedStatement ps=cn.prepareStatement("select * from  donar order by amount desc");
                ResultSet rs=ps.executeQuery();
                
                int i=0;
                while(rs.next() && i<4)
                {
                    i++;
                    nm=rs.getString("name");
                    im=rs.getString("image");
                    oc=rs.getString("occupation");
                 //   out.print(nm);
                 //   out.print(oc);
                    
                 %>
                    
                    
                 <div class="block" style="margin-left: 60px">
                        <div class="card" style="width: 300px;height: 400px;float: left;margin-left: 30px;border-radius: 10px 10px">
                            <img src="<%=im%>" alt="donar_image" width="300" height="300" class="donari">
                            <div class="dname" style="font-size: 18px;font-weight: bold;margin-left: 4px;margin-top: 4px">
                                <%=nm%>
                                <br>
                                <div class="docc">
                                    <%=oc%>
                                </div>
                            </div>
                        </div>
                    </div>
                                <%      
                }
                
                
            }
            catch(ClassNotFoundException ex)
            {
                out.print(ex);
            }
            catch(SQLException ex)
            {
                out.print(ex);
            }
        %>    
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            <div class="footer-main-div">
            <div class="footer-social-icons">
                    <table border="0" width="900px" align="center">
                        <caption><strong><u>Quick Links</u></strong></caption>
                      
                        <thead>
                            <tr>
                                <th>About Us</th>
                                <th>For Donors</th>
                                <th>Events</th>
                                <th>Follow Us</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center"><a href="http://aboutus.html" target="_blank">History</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">Join Us</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">Past Events</a></td>
                                <td align="center"><a href="http://loginform.html" target="_blank"><img src="fb.png" width="18px" height="18px" alt="fb"></a></td>
                            </tr>
                            <tr>
                                <td align="center"><a href="http://about.jsp" target="_blank">Chairman Message</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">Volunteer</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">Upcoming Events</a></td>
                                <td align="center"><a href="http://loginform.html" target="_blank"><img src="tweet.png" width="18px" height="18px" alt="twitter"></a></td>
                                <td align="center"></td>
                            </tr>
                            <tr>
                                <td align="center"><a href="http://about.jsp" target="_blank">Our Vision</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">Support NGO</a></td>
                                <td> </td>
                                <td align="center"><a href="http://loginform.html" target="_blank"><img src="g.png" width="18px" height="18px" alt="g+"></a></td>
                                
                                
                            </tr>
                            <tr>
                               <td align="center"><a href="http://about.jsp" target="_blank">Team</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">News</a></td>
                                <td> </td>
                                <td align="center"><a href="http://loginform.html" target="_blank"><img src="yt.png" width="18px" height="18px" alt="yt"></a></td>
                            </tr>
                            <tr>
                                <td align="center"><a href="http://about.jsp" target="_blank">Future Plan</a></td>
                                <td align="center"><a href="http://about.jsp" target="_blank">Media Center</a></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            <p style="text-align: center;color: lightseagreen">Copyright@ All Rights Reserved[!]<br>
                <a href="#" style="color: lightseagreen">Privacy Policy</a></p>
        </div> 
        
    </body>
</html>