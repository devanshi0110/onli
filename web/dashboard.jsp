<%-- 
    Document   : admin_homee
    Created on : 23-Dec-2022, 11:11:43 PM
    Author     : KRUNAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBconnection.SQLconnection"%>
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
       <%
        if (request.getParameter("Success") != null) {
    %>
    <script>alert('Login Success');</script>
    <%            }
    %>
    
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
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-plus"></i></div>
                                View Election
                            </a>


                            <a class="nav-link" href="add_candidate.jsp">
                            <div class="sb-nav-link-icon"><i class="fa-solid fa-file-lines"></i></div>
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
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                    
                        <div class="row">
                            <div class="row">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-table me-1"></i>
                                         Dashboard
                                    </div>
          
                            <div class="card-body">
                                 <table id="datatablesSimple customers" class="table table-bordered" style=" text-align: center">
                           <tr>
                                            <th style=" text-align: center">User ID</th>
                                            <th style=" text-align: center">Name</th>
                                            <th style=" text-align: center">Email </th>
                                            <th style=" text-align: center">DOB</th>
                                            <th style=" text-align: center">Address</th>
                                             <th style=" text-align: center">Phone No</th>
                                             <th style=" text-align: center">Status</th>
                                            <th style=" text-align: center">Action</th>
                           </tr>
 <%
                                                Connection con = SQLconnection.getconnection();
                                                Statement st = con.createStatement();
                                                try {
                                                    ResultSet rs = st.executeQuery("SELECT * FROM user_reg ");
                                                    while (rs.next()) {
                                            %>

                                            <tr>
                                                 <form action="vote_approve.jsp" method="get">
                                                <td><input style="background-color: transparent; border: none; color: #000" size="6" name="id" value="<%=rs.getString("id")%>"  type="text"  readonly=""></td>
                                                <td><input style="background-color: transparent; border: none; color: #000" size="13" name="name" value="<%=rs.getString("name")%>"  type="text"  readonly=""></td>
                                                <td><input style="background-color: transparent; border: none; color: #000" name="email" size="30" value="<%=rs.getString("email")%>" type="text" readonly=""></td>
                                                <td><%=rs.getString("dob")%> </td>
                                                <td><%=rs.getString("address")%> </td>
                                                <td><%=rs.getString("phone")%> </td>
                                                <td><%=rs.getString("status")%> </td>
                                                <td><i><button type="submit" class="btn btn-danger">Approve</button></i></td>
                                            </form>
                                           </tr> 
 <%                                        }
                                                } catch (Exception ex) {
                                                    ex.printStackTrace();
                                                }


                                            %>
                       </table>
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
       
    </body>
</html>
