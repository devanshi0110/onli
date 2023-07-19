<%-- 
    Document   : admin_homee
    Created on : 23-Dec-2022, 11:11:43 PM
    Author     : KRUNAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Election-vote for own</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        
<!--<link href="css/styles.css" rel="stylesheet" />-->
            <link rel="stylesheet" href="assets2/styles1.css"></link>
            <script src="assets2/scripts.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.0/css/all.css"/>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        
    </head>

    <body class="sb-nav-fixed">
       <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3">Election Buddy</a>
            <!-- Sidebar Toggle-->

            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>

            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group"></div>
            </form>
            <!-- Navbar-->

            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="../Login.xhtml">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

         <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading"></div>
                            <a class="nav-link" href="dashboard.jsp">
                            <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>

                            <a class="nav-link" href="add_election.xhtml">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-plus"></i></div>
                                Add Election
                            </a>
                            
                           <a class="nav-link" href="view_election.xhtml">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-file-lines"></i></div>
                                View Election
                            </a>


                            <a class="nav-link" href="add_candidate.jsp">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-plus"></i></div>
                                Add Candidate                         
                            </a>


                            
                            <a class="nav-link" href="view_voter.jsp">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-person-booth"></i></div>
                                View Voters
                            </a>
                            
                            <a class="nav-link" href="view_result.jsp">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-person-booth"></i></div>
                                View Result
                            </a>
                     
                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">View Result</h1>
                        <ol class="breadcrumb mb-4">
                        </ol>
                    
                        <div class="row">
                            <div class="row">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fa-solid fa-pen-to-square me-1"></i>
                                       view Result
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
                                
                       <div class="card-body">
                         <form style="margin: 10px; width: 50%; margin-left: 20%; " method="post" action="view_r.jsp" >

                              <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3  col-form-label">Select Election</label>    
                            <div class="col-sm-8">
                          <div class="input-group date" id="datepicker">
                              <select class="form-select" name="election_name" required="required"><option value="">Select Election</option>
                                   <%  while (rs.next()) {%>
                                      <option value="<%=rs.getString(2)%>">&nbsp;&nbsp;&nbsp;<%=rs.getString(2)%></option>
                                   <%
                                       }
                                   %> 
                              </select>
                            </div><br>
                            </div>

                            
                            
                         <div class="form-group"> 
                         <button type="submit"  class="btn btn-primary btn-lg btn-block"style=" margin-left: 35%; margin-top: 1%;">Submit</button>

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
                    </div>
                </main>
  

                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js1/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets2/demo/chart-area-demo.js"></script>
        <script src="assets2/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js1/datatables-simple-demo.js"></script>
       <script src="js1/datatables-simple-demo.js"></script>
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
    
    </body>
</html>
