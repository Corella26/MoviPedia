<%-- 
    Document   : dashboard
    Created on : 31 may. 2022, 16:44:17
    Author     : jcorellac
--%>

<%@page import="Controller.movieController"%>
<%@page import="Model.movie"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="src/css/style.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Movipedia</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary text-white fixed-top">
            <div class="container-fluid">
                <!-- offcanvas trigger -->
                <button class="navbar-toggler me-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
                    <span class="navbar-toggler-icon "></span>
                </button>
                <!-- offcanvas trigger -->

                <a class="navbar-brand fw-bold text-uppercase me-auto" href="#">MOVIPEDIA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarColor01">


                    <form class="d-flex ms-auto">
                        <div class="input-group">
                            <input class="form-control me-sm-2" type="text" placeholder="Search">
                            <button class="btn btn-secondary my-2 my-sm-0" type="submit"><i class="bi bi-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
        <!-- offcanvas -->
        <div class="offcanvas offcanvas-start bg-primary text-white siderbar-nav" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">

            <div class="offcanvas-body p-0">
                <nav class="navbar-dark">
                    <ul class="navbar-nav ">
                        <li>
                            <div class=" small fw-bold text-uppercase px-3">
                                DIRECTORY
                            </div>
                            <a class="nav-link px-3 active" href="index.html"><span class="me-2"><i class="bi bi-house-fill"></i></span> 
                                <span>Home</span>
                            </a>
                            <a class="nav-link px-3 active" href="dashboard.jsp"><span class="me-2"><i class="bi bi-film"></i></span> 
                                <span>Movies</span>
                            </a>
                            <a class="nav-link px-3 active" href="#"><span class="me-2"><i class="bi bi-person-square"></i></span> 
                                <span>Directors</span>
                            </a>
                            <a class="nav-link px-3 active" href="#"><span class="me-2"><i class="bi bi-person-square"></i></span> 
                                <span>Actress/Actors</span>
                            </a>
                        </li>
                        <li class="my-4">
                            <hr class="dropdown-divider">
                        </li>
                         <li>
                            <div class=" small fw-bold text-uppercase px-3">
                                CATEGORIES
                            </div>
                        </li>
                        <li>
                            <a class="nav-link px-3 sidebar-link active" data-bs-toggle="collapse" href="#collapseCompanie" role="button" aria-expanded="false" aria-controls="collapseCompanie">
                                <span class="me-2">
                                    <i class="bi bi-building"></i>
                                </span>
                                <span>Companies</span>
                                <span class="right-icon ms-auto">
                                    <i class="bi bi-chevron-down"></i>
                                </span>
                            </a>
                            <div class="collapse" id="collapseCompanie">
                                <div>
                                    <ul class="navbar-nav ps-3">
                                        <li>
                                            <a href="#" class="nav-link active">
                                                <span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>WaltDisney</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="nav-link active"><span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Universal</span>
                                            </a>

                                        </li>
                                        <li>
                                            <a href="#" class="nav-link active"><span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Sony</span>
                                            </a>

                                        </li>
                                        <li>
                                            <a href="#" class="nav-link active"><span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Paramount</span>
                                            </a>

                                        </li>
                                    </ul>

                                </div>

                            </div>
                        </li>
                        <li>
                            <a class="nav-link px-3 sidebar-link active" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                <span class="me-2">
                                    <i class="bi bi-layout-split"></i>
                                </span>
                                <span>Genders</span>
                                <span class="right-icon ms-auto">
                                    <i class="bi bi-chevron-down"></i>
                                </span>
                            </a>
                            <div class="collapse" id="collapseExample">
                                <div>
                                    <ul class="navbar-nav ps-3">
                                        <li>
                                            <a href="#" class="nav-link active">
                                                <span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Accion</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="nav-link active"><span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Romance</span>
                                            </a>

                                        </li>
                                        <li>
                                            <a href="#" class="nav-link active"><span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Comedy</span>
                                            </a>

                                        </li>
                                        <li>
                                            <a href="#" class="nav-link active"><span class="me-2">
                                                    <i class="bi bi-bar-chart-steps"></i>
                                                </span>
                                                <span>Terror</span>
                                            </a>

                                        </li>
                                    </ul>

                                </div>

                            </div>
                        </li>
                    </ul>
                </nav>

            </div>
        </div>
        <!-- offcanvas -->
        <main class="mt-5 pt-3">
            <div class="container-fluid">
                <div class="row" id="movies">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                MOVIES
                                <hr>
                                <input class="form-control" id="tableInput" type="text" placeholder="Search..">
                                
                            </div>
                            <div class="card-body">
                                <table class="table table-hover table-striped data-table" >
                                    <thead>
                                        <tr>
                                            <th>Number</th>
                                            <th>Title</th>
                                            <th>Budget</th>
                                            <th>Popularity</th>
                                            <th>Release</th>
                                            <th>Revenue</th>
                                            <th>Run Time</th>
                                            <th>Tag Line</th>
                                            <th>Vote Average</th>
                                            <th>Vote Count</th>
                                        </tr>
                                    </thead>
                                    <tbody class="table-group-divider" id="movieTable">
                                        <%
                                            List<movie> list = movieController.findMovies();
                                            for (movie m : list) {
                                        %>
                                        <tr>
                                            <td><%=m.getMovie_id()%></td>
                                            <td><a class="movieLink" href="movieDetail.jsp?id=<%=m.getMovie_id()%>" ><%=m.getTitle()%></a></td>
                                            <td><%=m.getBudget()%></td>
                                            <td><%=m.getPopularity()%></td>
                                            <td><%=m.getRelease_date()%></td>
                                            <td><%=m.getRevenue()%></td>
                                            <td><%=m.getRuntime()%></td>
                                            <td><%=m.getTagline()%></td>
                                            <td><%=m.getVote_average()%></td>
                                            <td><%=m.getVote_count()%></td>
                                            
                                        </tr>
                                        <% }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script>
            $(document).ready(function () {
                $("#tableInput").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#movieTable tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>                        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="src/js/script.js"></script>
        <script src="http://code.jquery.com/jquery-latest-js"></script>
    </body>
</html>
