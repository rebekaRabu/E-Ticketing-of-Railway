<%-- 
    Document   : trainseat2
    Created on : Jun 13, 2019, 8:25:17 PM
    Author     : acer
--%>

<%-- 
    Document   : comptype
    Created on : Jun 13, 2019, 11:09:43 PM
    Author     : acer
--%>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin - Add Train Seat</title>
        <link href="resources/img/logo.ico" rel="shortcut icon" />
        <!-- Bootstrap core CSS-->
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="resources/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="resources/datatables/dataTablesbootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="resources/cssnew/sb-admin.css" rel="stylesheet">
        <script src="resources/js/angular.js"></script>

        <script>

            var farechartlist =${farechartlist};
            var fromstationlist =${fromstationlist};
            var tostationlist =${tostationlist};
            var comptypelist =${comptypelist};



            angular.module('farechartApp', []).controller('farechartController',
                    function ($scope) {

                        $scope.farelist = farechartlist;
                        $scope.fromlist = fromstationlist;
                        $scope.tolist = tostationlist;
                        $scope.complist = comptypelist;

                        console.log($scope.farelist);
                        console.log($scope.fromlist);
                        console.log($scope.tolist);
                        console.log($scope.complist);


                    });
        </script>
    </head>
    <body id="page-top" ng-app="farechartApp" ng-controller="farechartController">



        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="admin">E-Ticketing</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <span class="badge badge-danger">9+</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <span class="badge badge-danger">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Hello ${sessionScope.UserLoggedIn}</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>">Home</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
                    </div>
                </li>
            </ul>

        </nav>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="admin">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Pages</span>
                    </a>
                   <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Settings:</h6>
                        <a class="dropdown-item" href="showingfromstationpage">Add From Station</a>
                        <a class="dropdown-item" href="showingtostationtpage">Add To Station</a>
                        <a class="dropdown-item" href="showingcomptypepage">Add Compartment</a>
                        <a class="dropdown-item" href="showingcompsubtypepage">Add Sub Compartment</a>
                        <a class="dropdown-item" href="showingpassengertype">Add Passenger Type</a>
                        <a class="dropdown-item" href="showtraininfopage">Add Train Info</a>
                        <a class="dropdown-item" href="showingtrainseatpage">Add Train Seat</a>
                        <a class="dropdown-item" href="showfarechartpage">Add Fare Chart</a>
                        
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item" href="#">View Passenger Info</a>
                        
                        
                        <a class="dropdown-item" href="reportView" target="_blank">Product Report</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Payment Method</span></a>
                </li>
		<li class="nav-item">
                    <a class="nav-link" href="showreservationdetailspage">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>View Reservation</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>View User List</span></a>
                </li>

                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>All Reports :</span>
                    </a>
		<div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Report :</h6>
                        
                        <a class="dropdown-item" href="reportView" target="_blank">Fare Report</a>
                        <a class="dropdown-item" href="compartmentreportView">Compartment Report</a>
                        <a class="dropdown-item" href="reservationreportView">Reservation Report</a>
                        
                    </div>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="tables.html">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Tables</span></a>
                </li>
            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Add Passenger Type</li>
                    </ol>
                    <!-- end panel heading -->
                    <div class="panel-body">
                        <div class="formcontainer ">


                            <form:form commandName="newProductObject" action="trainseatadd"
                                       enctype="multipart/form-data">
                                <!---------------------------------------seatid, trainid, comptypeid, compsubtypeid, totalseat----------------------->                               
                                <c:if test="${check}">
                                    <div class="form-group">
                                        <form:input class="form-control" Placeholder="Train seat Id" type="text" path="seatid" required="true"></form:input>
                                        </div>
                                </c:if>



                                <c:if test="${!check}">
                                    <div class="form-group">
                                        <form:input class="form-control" Placeholder="Train seat Id" type="text" path="seatid" readonly="true" required="true"></form:input>
                                        </div>
                                </c:if>





                                <!-----------------------------------------------comptypeid, compname, description------------------------------------------------>
                                <div class="form-row">        
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <select class="form-control" ng-model="comptypeid" ng-options="y.comptypeid as y.compname for y in tolist" required="true">
                                                <option value="">-- Choose Compartment Name --</option>
                                            </select>

                                        </div>
                                    </div> 




                                    <!------------------------------compsubtypeid, compsubtypename---------------------------------------------->     

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <select class="form-control" ng-model="compsubtypeid" ng-options="y.compsubtypeid as y.compsubtypename for y in complist" required="true">
                                                <option value="">-- Choose Sub Compartment  Name --</option>
                                            </select>

                                        </div>
                                    </div>

                                </div>


                                <!------------------------trainid, trainnub, trainname, fromstationid, tostationid, depttime, arrivtime, dayoff-------------------------------------------->


                                <div class="form-group">
                                    <select class="form-control" ng-model="trainid" ng-options="y.trainid as y.trainname for y in fromlist" required="true">
                                        <option value="">-- Choose Train Name --</option>
                                    </select>

                                </div>



                                <!---------------------------------------seatid, trainid, comptypeid, compsubtypeid, totalseat----------------------->                                    

                                <div class="form-group">
                                    <div class="form-label-group">
                                        <form:input class="form-control" Placeholder="Total Seat" type="text" path="totalseat" required="true" id="totalseat"></form:input>
                                            <label for="totalseat">Total Seat</label>
                                        </div>
                                    </div>                                       








                                    <div class="form-group">

                                        <!------------------------------- <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>---------------------------->

                                        <div class="form-label-group">
                                        <form:hidden  class="form-control" value="{{trainid}}" path="trainid"></form:hidden>
                                        </div>


                                        <div class="form-label-group">
                                        <form:hidden  class="form-control" value="{{comptypeid}}" path="comptypeid"></form:hidden>
                                        </div>            

                                        <div class="form-label-group">
                                        <form:hidden  class="form-control" value="{{compsubtypeid}}" path="compsubtypeid"></form:hidden>
                                        </div>


                                    <c:if test="${check}">
                                        <form:button id="editbuttons" type="submit" name="Add" class="btn btn-success">Add Train Seat</form:button>
                                        <form:button id="removebuttons" type="reset" class="btn btn-danger">Reset Details</form:button>
                                    </c:if>
                                    <c:if test="${!check}">
                                        <form:button id="editbuttons" type="submit" name="Edit" class="btn btn-success">Edit Details</form:button>
                                        <form:button id="removebuttons" type="reset" class="btn btn-danger">Reset Details</form:button>
                                    </c:if>
                                    <a href="showingtrainseatpage"><button id="show" type="button" class="btn">Cancel</button></a> 
                                </div><!--//form group-->


                            </form:form>
                        </div><!--form container-->

                    </div><!-- panel body end -->

                    <!-- DataTables Example -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Train Seat List</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>

                                            <th>Seat Id</th>
                                            <th>Train id</th>
                                            <th>Compartment Id</th>
                                            <th>SubCompartment Id</th>
                                            <th>Total Seat</th>
                                            <th>Manage Fare</th>
                                        </tr>
                                    </thead>
                                    <!--                                        <tfoot>
                                                                                <tr>
                                                                                   
                                                                                    <th>Train seat Id</th>
                                                                                    <th>Train seat Id</th>
                                                                                    <th>comptype Id</th>
                                                                                    <th>compsubtype Id</th>
                                                                                    <th>total seat</th>
                                                                                    <th>Manage Product</th>
                                                                                </tr>
                                                                            </tfoot>-->
                                    <tbody>

                                        <!------------------------------seatid, trainid, comptypeid, compsubtypeid, totalseat------------------------->                                               
                                        <tr ng-repeat="fare in farelist">

                                            <td>{{fare.seatid}}</td>
                                            <td>{{fare.trainid}}</td>
                                            <td>{{fare.comptypeid}}</td>
                                            <td>{{fare.compsubtypeid}}</td>
                                            <td>{{fare.totalseat}}</td>

                                            <td><a href="editingtrainseat?getseatid={{fare.seatid}}"><button id="editbuttons" type="submit" class="btn">Edit</button></a> 
                                                <a href="removingtrainseat/{{fare.seatid}}"><button id="removebuttons" type="button" class="btn btn-danger">Remove</button></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>





                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>

                </div><!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <footer class="sticky-footer">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright © Your Website 2019</span>
                        </div>
                    </div>
                </footer>

            </div><!-- /.content-wrapper -->



        </div> <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="logout">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="resources/jquery/jquery.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="resources/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="resources/chart/Chartmin.js"></script>
        <script src="resources/datatables/jquerydataTables.js"></script>
        <script src="resources/datatables/dataTablesbootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="resources/jsnew/sb-adminmin.js"></script>

        <!-- Demo scripts for this page-->
        <script src="resources/jsnew/demo/datatablesdemo.js"></script>
        <script src="resources/jsnew/demo/chartareademo.js"></script>


        <!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>-->

        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <!--            <script>
                                                                    $(document).ready(function () {
                                                                        var date_input = $('input[name="purchasedate"]'); //our date input has the name "date"
                                                                        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                        date_input.datepicker({
                                                                            format: 'yyyy/mm/dd',
                                                                            container: container,
                                                                            todayHighlight: true,
                                                                            autoclose: true,
                                                                        })
                                                                    })
                    </script>-->

        <!--     Form code begins 
            <form method="post">
              <div class="form-group">  Date input 
                <label class="control-label" for="date">Date</label>
                <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
              </div>
             </form>-->
    </body>
</html>
