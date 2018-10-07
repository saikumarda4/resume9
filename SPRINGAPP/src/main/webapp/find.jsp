<%@page import = "com.naveen.pojo.*"%>
<%@page import = "java.lang.*"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
 <head>
    
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Employee Portal!  </title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>


  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="dashboard.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Employee Portal!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <%
            Employee emp1 =(Employee)session.getAttribute("employees");

	Employee emp =(Employee)request.getAttribute("details");
	if(emp==null)
	{
		emp=emp1;
	}
	Department dept = emp.getDept(); 
	emp.setDept(dept);

   %>
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2><%out.print(emp1.getUserName());%></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

           <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
               
                <ul class="nav side-menu">
                  <li><a href="dashboard.jsp"><i class="fa fa-home"></i> Home </a></li>
                                  
				  <li><a href="edit.jsp"><i class="fa fa-edit"></i> Edit </a></li>
				  <li><a href="leave.jsp"><i class="fa fa-table"></i> Leave Form </a></li>
				   <li><a href="find.jsp"><i class="fa fa-search"></i> Find Employee </a></li>
				   <li><a href="delete.jsp"><i class="fa fa-trash"></i> Delete Account </a></li>
				   <li><a href="logout.jsp"><i class="fa fa-power-off"></i> Logout </a></li>
                   
                  
                  
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            
          </div>
        </div>

      
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Search Profile</h3>
              </div>

              
                  
                 <form action="findById.form">
                    
                    <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <input type="text"  name="id" class="form-control" placeholder="Enter Id...">
                           <input class="btn btn-primary" type="submit" value="find"/>
                        </div>
                      </div>                
                                      
                </div>
              </div>
               </form>
            </div>
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Profile</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                      <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                          <img class="img-responsive avatar-view" src="images/picture.jpg" alt="Avatar" title="Change the avatar">
                        </div>
                      </div>
					  </div>
					  
					<c:if test="${details ne null }">  
					  <div class="col-md-9 col-sm-9 col-xs-12">
                      <h3><%out.print(emp.getUserName());%></h3>
					
                      <ul class="list-unstyled user_data">
                      <li><i class="fa  fa-list-alt user-profile-icon"></i> <%out.print(emp.getId());%>
                        </li>
                        <li><i class="fa fa-cube user-profile-icon"></i> <%out.print(dept.getName());%>
                        </li>
                        <li>
                          <i class="fa fa-briefcase user-profile-icon"></i>  <%out.print(dept.getRole());%>
                        </li>

                        <li class="m-top-xs">
                          <i class="fa fa-envelope user-profile-icon"></i>
                          <%out.print(emp.getEmail());%>
                        </li>
                        <li class="m-top-xs">
                          <i class="fa fa-phone user-profile-icon"></i>
                          <%out.print(emp.getMobile());%>
                        </li>
                      </ul>

                     
                      <br />

                      

                    </div>
                    </c:if>
                    <h3 style="color: red;">${message}</h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

       
      </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="vendors/Flot/jquery.flot.js"></script>
    <script src="vendors/Flot/jquery.flot.pie.js"></script>
    <script src="vendors/Flot/jquery.flot.time.js"></script>
    <script src="vendors/Flot/jquery.flot.stack.js"></script>
    <script src="vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/moment/min/moment.min.js"></script>
    <script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
	
  </body>
</html>
