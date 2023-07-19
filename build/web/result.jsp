<%-- 
    Document   : Admin_login
    Created on : 15 Mar, 2021, 5:01:34 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Election buddy - vote for own</title>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>
        <!-- Font Awesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- Slick slider -->
        <link href="assets/css/slick.css" rel="stylesheet">
        <!-- Gallery Lightbox -->
        <link href="assets/css/magnific-popup.css" rel="stylesheet">
        <!-- Skills Circle CSS  -->
        <link rel="stylesheet" type="text/css" href="https://unpkg.com/circlebars@1.0.3/dist/circle.css">
        <!-- Main Style -->
        <link href="assets/css/style.css" rel="stylesheet">
        <!-- Google Fonts Raleway -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,400i,500,500i,600,700" rel="stylesheet">
        <!-- Google Fonts Open sans -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,700,800" rel="stylesheet">
        
        
        <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/png" href="assets1/images/icon/favicon.ico"></link>
    <!-- all css here -->
    <link rel="stylesheet" href="assets1/css/bootstrap.min.css"></link>
    <link rel="stylesheet" href="assets1/css/font-awesome.min.css"></link>
    <link rel="stylesheet" href="assets1/css/owl.carousel.min.css"></link>
    <link rel="stylesheet" href="assets1/css/magnific-popup.css"></link>
    <link rel="stylesheet" href="assets1/css/slicknav.min.css"></link>
    <link rel="stylesheet" href="assets1/css/typography.css"></link>
<!--    <link rel="stylesheet" href="assets1/css/default-css.css"></link>-->
    <link rel="stylesheet" href="assets1/css/styles.css"></link>
    <link rel="stylesheet" href="assets1/css/responsive.css"></link>
    <!--color css-->
    <link rel="stylesheet" id="triggerColor" href="assets1/css/triggerplate/color-0.css"></link>
    <!-- modernizr css -->
    <script src="assets1/js/vendor/modernizr-2.8.3.min.js"></script>
    
    
    </head>
    <script>
        var loadFile = function (event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output');
                output.src = reader.result;
            };
            reader.readAsDataURL(event.target.files[0]);
        };
    </script>
    <body>
        <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- prealoader area end -->
       <header id="header">
        <!-- header two area start -->
        <div class="header-three">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-xl-2 col-lg-3 col-md-6">
                        <div class="logo">
                            <img src="assets1/images/icon/final.png" alt="logo"></img>
                        </div>
                    </div>
                    <div class="col-lg-7 d-none d-lg-block">
                        <div class="main-menu menu-style2">
                            <nav>
                                <ul id="m_menu_active">
                                    <li class="active"><a href="home.xhtml">Home</a></li>
                                    <li><a href="about.xhtml">About</a></li>              
                                    <li><a href="election.jsp">Election</a></li>
                                    <li><a href="result.jsp">Result</a></li>
                                    <li><a href="contact.xhtml">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                   
                    <div class="col-xl-3 col-lg-2 col-md-5">
                        <div class="hb-s3-right">
                            <ul>
                                <li><a class="btn btn-primary" href="../Login.xhtml">Log Out</a></li> 
                    
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header two area end -->
       </header>
    <!-- header area end -->

    <!-- offset search area start -->
    <div class="offset-search">
        <form action="#">
            
            <input type="text" name="search" placeholder="Sarch here..."></input>
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
    <!-- offset search area end -->

    <!-- body overlay area start -->
    <div class="body_overlay"></div>
    <!-- body overlay area end -->

    <!-- hero area start -->
    <div class="hero-area hero-s6 has-color">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 offset-xl-1">
                    <div class="hero-content hero-content-s3">
                
                  </div>
                </div>
            </div>
        </div>
    </div>
    <!-- hero area end --> 
        
        <main>
            <section id="mu-contact">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mu-contact-area">
                                <!-- Title -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mu-title">
                                            <h2>Elections</h2>
                                        </div>
                                    </div>
                                </div>
                               <%
                                    String uid = "0";
                                    String vid = (String) session.getAttribute("uid");
                                    Connection con = SQLconnection.getconnection();
                                    Statement st = con.createStatement();
                                    Statement st1 = con.createStatement();
                                    Statement st2 = con.createStatement();
                                    try {

                                        ResultSet rs = st.executeQuery("SELECT * FROM add_election");


                                %>
                                 <div class="mu-contact-content">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="mu-contact-form-area">
                                                <div id="form-messages"></div>
                                                <form method="post" action="r.jsp" class="mu-contact-form">
                                                    <div class="form-group">  
                                                        <span class="fa fa-comment mu-contact-icon"></span>   
                                                        <select class="form-control" name="election_name" required="required"><option value="">&nbsp;&nbsp;&nbsp;Select Election</option>
                                                             <%  while (rs.next()) {%>
                                      <option value="<%=rs.getString(2)%>">&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%></option>
                                   <%
                                       }
                                   %>                                                         </select>
                                                    </div>
                                                    <div class="form-group"> 
                                                        <button type="submit" class="btn btn-primary btn-lg btn-block"><span>Submit</span></button>
<!--                                                     <a href="#" class="btn btn-primary btn-lg btn-block" type="submit">Submit</a>-->

                                                    </div> 
                                                </form>
                                                <%

                                                        
                                                    } catch (Exception ex) {
                                                        ex.printStackTrace();
                                                    }

                                                %>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Contact Content -->
                           
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- End main content -->	
        <!-- Start footer -->
        

        <footer>
        <div class="footer-top has-color pt--120 pb--30" >
            <div class="container">
                <div class="row" style="padding-top: 10%;">
                    <div class="col-md-4">
                        <div class="widget widget-company" >
                           <div class="address">
                                <h6>ADDRESS</h6>
                                <p>Veer Narmad South Gujarat University</p>
                                <p>Udhana - Magdalla Rd, Surat, Gujarat 395007</p>
                            </div>
                            <div class="address">
                                <h6>PHONE</h6>
                                <p>+091 1234567890</p>
                            </div>
                            <div class="address">
                                <h6>EMAIL</h6>
                                <p>electionbuddy0701@gmail.com</p>
                            </div>
                            <ul class="social">
                                <li<a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-md-4">
                        <div class="widget footer-link">
                            <h4 class="fwidget-title mb-5 pb-3 primary-color">Quick Links</h4> 
                            <ul>
                                <li><a href="about.xhtml"><i class="fa fa-arrow-right"></i>About Us</a></li>
                                <li><a href="contact.xhtml"><i class="fa fa-arrow-right"></i>Contact Us</a></li>
                                <li><a href="result.xhtml"><i class="fa fa-arrow-right"></i>Result</a></li>
                            </ul>
                        </div>
                    </div><!-- comment -->
        
                    <div class="col-md-4">
                        <div class="widget widget-opening">
                            <h4 class="fwidget-title mb-5 pb-3 primary-color">Get of Fact</h4>
                         <p> <i class="fa fa-arrow-right"></i> It's not enough to just want change.....You have to go and make change by voting.</p>
                       </div>
                    </div>
                </div>
                
                <div class="footer-bottom" style="padding-bottom: 2%;">
                    <p>Copyright &copy; 2022 <span><a target="_blank" href="" class="primary-color">Election buddy</a> </span> - All Rights Reserved.</p>
                </div>
                
            </div>
        </div>
    </footer>
 
    
        <!-- End footer -->
        <!-- JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
        <!-- Slick slider -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="assets/js/slick.min.js"></script>
        <!-- Progress Bar -->
        <script src="https://unpkg.com/circlebars@1.0.3/dist/circle.js"></script>
        <!-- Filterable Gallery js -->
        <script type="text/javascript" src="assets/js/jquery.filterizr.min.js"></script>
        <!-- Gallery Lightbox -->
        <script type="text/javascript" src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- Counter js -->
        <script type="text/javascript" src="assets/js/counter.js"></script>
        <!-- Ajax contact form  -->
        <script type="text/javascript" src="assets/js/app.js"></script>
        <!-- Custom js -->
        <script type="text/javascript" src="assets/js/custom.js"></script>
        <!-- About us Skills Circle progress  -->
        <script>
        // First circle
        new Circlebar({
            element: "#circle-1",
            type: "progress",
            maxValue: "90"
        });

        // Second circle
        new Circlebar({
            element: "#circle-2",
            type: "progress",
            maxValue: "84"
        });

        // Third circle
        new Circlebar({
            element: "#circle-3",
            type: "progress",
            maxValue: "60"
        });

        // Fourth circle
        new Circlebar({
            element: "#circle-4",
            type: "progress",
            maxValue: "74"
        });

        </script>
         <!-- jquery latest version -->
    <script src="assets1/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets1/js/bootstrap.min.js"></script>
    <!-- others plugins -->
    <script src="assets1/js/owl.carousel.min.js"></script>
    <script src="assets1/js/jquery.magnific-popup.min.js"></script>
    <script src="assets1/js/jquery.slicknav.min.js"></script>
    <script src="assets1/js/plugins.js"></script>
    <script src="assets1/js/scripts.js"></script>

    </body>
</html>