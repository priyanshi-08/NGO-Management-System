<%-- 
    Document   : upcoming
    Created on : 30 Jun, 2019, 9:28:49 PM
    Author     : ABHIJEET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        
        <div style="height: 420px">
        <%
            try
            {
                String im,nm,p,d,des;
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/db1");
                
                PreparedStatement ps=cn.prepareStatement("select * from  events");
                ResultSet rs=ps.executeQuery();
                
                if(rs.next())     
                {
                 //   i++;
                    nm=rs.getString("name");
                    im=rs.getString("image");
                    d=rs.getString("date");
                    p=rs.getString("place");
                    des=rs.getString("description");
                    //out.print(d);
                  //  ps=cn.prepareStatement("");
                    
                    
                 %>
                    
                    
                 <div class="block" style="margin-left: 60px">
                        <div class="card" style="width: 300px;height: 160px;float: left;margin-left: 30px;border-radius: 10px 10px;border: solid">
                            <img src="<%=im%>" alt="event" width="300" height="160" style="border-radius: 8px">
                        </div>     
                            <div class="ename" style="font-size: 18px;font-weight: bold;margin-left: 10px;margin-top: 40px">
                                <%=nm%>
                                <br>
                                <div class="docc">
                                    <%=p%>
                                    <br>
                                    <div class="place">
                                        <%=d%>
                                        <br>
                                        <div class="descrip">
                                            <%=des%>
                                    </div>
                                </div>
                            </div>
                            </div>       
        <div class="con">
        <div class="count">
            <div class="countd">
                <span id='<%="days"%>'>00</span>
                Days
            </div>
            <div class="countd">
                <span id='<%="hours"%>'>00</span>
                Hours
            </div>
            <div class="countd">
                <span id='<%="minutes"%>'>00</span>
                Minutes
            </div>
            <div class="countd">
                <span id='<%="seconds"%>'>00</span>
                Seconds
            </div>
        </div>
        </div>
                                    
                                           
        <script type="text/javascript">
        //    <%
        //        d=d+" 11:11:11";
        //        
        //    %>
            
            var deadline = new Date("<%=d%>").getTime(); 
            
            var x = setInterval(function() { 
            var now = new Date().getTime(); 
            var t = deadline - now; 
            
            var day = Math.floor(t / (1000 * 60 * 60 * 24)); 
            var hour = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60)); 
            var minute = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60)); 
            var second = Math.floor((t % (1000 * 60)) / 1000); 
            document.getElementById("<%="days"%>").innerHTML = day;
            document.getElementById("<%="hours"%>").innerHTML = hour;
            document.getElementById("<%="minutes"%>").innerHTML = minute;
            document.getElementById("<%="seconds"%>").innerHTML = second;
            
           
                if (t < 0) { 
                    clearInterval(x); 
           //         document.getElementById("demo").innerHTML = "EXPIRED"; 
                } 
            }, 1000);   
        </script>  
        
                                  
                                    
                                    <form action="index.html" method="post">
    <input type="text" name='enter' placeholder="Enter Email Id" style="margin-left: 60px;border-radius: 8px;height:60px;width: 240px">
    <br>
    <br>
    <input type="submit" class="zo" name="fwd" value='Join This Event' style="margin-left: 60px;border: none;outline: none;height: 40px;background: #fb2525;color: #fff;font-size: 18px;border-radius: 20px;">
</form>
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
        
        
        
        
        
        
        
        
        
        
        
        
        
        
          
        
        
        
        
        
        
        
        
        
        
<!--   <form>
    <input type="text" name='enter' placeholder="Enter Email Id" style="margin-left: 60px;border-radius: 8px;height:60px;width: 240px">
    <br>
    <br>
    <input type="submit" class="zo" name="fwd" value='Join This Event' style="margin-left: 60px;border: none;outline: none;height: 40px;background: #fb2525;color: #fff;font-size: 18px;border-radius: 20px;">
</form>  -->
        </div>
            
       
 <!--       <div class="con">
        <div class="count">
            <div class="countd">
                <span id="days">00</span>
                Days
            </div>
            <div class="countd">
                <span id="hours">00</span>
                Hours
            </div>
            <div class="countd">
                <span id="minutes">00</span>
                Minutes
            </div>
            <div class="countd">
                <span id="seconds">00</span>
                Seconds
            </div>
        </div>
        </div>
        <script type="text/javascript">
            var deadline = new Date("July 14, 2019 15:37:25").getTime(); 
            var x = setInterval(function() { 
            var now = new Date().getTime(); 
            var t = deadline - now; 
            var days = Math.floor(t / (1000 * 60 * 60 * 24)); 
            var hours = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60)); 
            var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60)); 
            var seconds = Math.floor((t % (1000 * 60)) / 1000); 
            document.getElementById("days").innerHTML = days;
            document.getElementById("hours").innerHTML = hours;
            document.getElementById("minutes").innerHTML = minutes;
            document.getElementById("seconds").innerHTML = seconds;
                if (t < 0) { 
                    clearInterval(x); 
                    document.getElementById("demo").innerHTML = "EXPIRED"; 
                } 
            }, 1000);   
        </script>    -->
    </body>
</html>
