<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*,JDBC.jsp.*"%>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="dashboard/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="dashboard/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="dashboard/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="dashboard/css/sb-admin.css" rel="stylesheet">

</head>

<body>
			<div class="row">
				<div class="col-xl-6 col-sm-6 mb-3">
					<div class="card text-white bg-primary o-hidden h-100">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-server"></i>
							</div>
							<div class="mr-5" style="font-size: 1.5em">My Policies</div>
						</div>
						<a href="#" class="card-footer text-white clearfix small z-1">
							<span class="float-left" style="font-size: 1.2em">View
								Details</span> <span class="float-right"> <i
								class="fa fa-angle-right"></i>
						</span>
						</a>
					</div>
				</div>
				<div class="col-xl-6 col-sm-6 mb-3" style="display: block;">
					<div class="card text-white bg-warning o-hidden h-100";">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-money"></i>
							</div>
							<div class="mr-5" style="font-size: 1.5em">Premium Payment</div>
						</div>
						<a href="#" class="card-footer text-white clearfix small z-1">
							<span class="float-left" style="font-size: 1.2em">View
								Details</span> <span class="float-right"> <i
								class="fa fa-angle-right"></i>
						</span>
						</a>
					</div>
				</div>
				<div class="col-xl-6 col-sm-6 mb-3">
					<div class="card text-white bg-success o-hidden h-100">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-address-card-o"></i>
							</div>
							<div class="mr-5" style="font-size: 1.5em">My Profile</div>
						</div>
						<a href="#" class="card-footer text-white clearfix small z-1">
							<span class="float-left" style="font-size: 1.2em">View
								Details</span> <span class="float-right"> <i
								class="fa fa-angle-right"></i>
						</span>
						</a>
					</div>
				</div>
				<div class="col-xl-6 col-sm-6 mb-3">
					<div class="card text-white bg-danger o-hidden h-100">
						<div class="card-body">
							<div class="card-body-icon">
								<i class="fa fa-fw fa-newspaper-o"></i>
							</div>
							<div class="mr-5" style="font-size: 1.5em">New plans by
								LIC!</div>
						</div>
						<a href="#" class="card-footer text-white clearfix small z-1">
							<span class="float-left" style="font-size: 1.2em">View
								Details</span> <span class="float-right"> <i
								class="fa fa-angle-right"></i>
						</span>
						</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">
					<!-- Example Notifications Card -->
					<div class="card mb-3">
						<div class="card-header">
							<i class="fa fa-bell-o"></i> Feed Example
						</div>
						<div class="list-group list-group-flush small">
							<a href="#" class="list-group-item list-group-item-action">
								<div class="media">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/45x45" alt="">
									<div class="media-body">
										<strong>David Miller</strong> posted a new article to <strong>David
											Miller Website</strong>.
										<div class="text-muted smaller">Today at 5:43 PM - 5m
											ago</div>
									</div>
								</div>
							</a> <a href="#" class="list-group-item list-group-item-action">
								<div class="media">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/45x45" alt="">
									<div class="media-body">
										<strong>Samantha King</strong> sent you a new message!
										<div class="text-muted smaller">Today at 4:37 PM - 1hr
											ago</div>
									</div>
								</div>
							</a> <a href="#" class="list-group-item list-group-item-action">
								<div class="media">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/45x45" alt="">
									<div class="media-body">
										<strong>Jeffery Wellings</strong> added a new photo to the
										album <strong>Beach</strong>.
										<div class="text-muted smaller">Today at 4:31 PM - 1hr
											ago</div>
									</div>
								</div>
							</a> <a href="#" class="list-group-item list-group-item-action">
								<div class="media">
									<img class="d-flex mr-3 rounded-circle"
										src="http://placehold.it/45x45" alt="">
									<div class="media-body">
										<i class="fa fa-code-fork"></i> <strong>Monica Dennis</strong>
										forked the <strong>startbootstrap-sb-admin</strong> repository
										on <strong>GitHub</strong>.
										<div class="text-muted smaller">Today at 3:54 PM - 2hrs
											ago</div>
									</div>
								</div>
							</a> <a href="#" class="list-group-item list-group-item-action">
								View all activity... </a>
						</div>
						<div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div>
					</div>
				</div>
			</div>

			<!-- Example Tables Card -->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> Data Table Example
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" width="100%" id="dataTable"
							cellspacing="0">
							<thead>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>Tiger Nixon</td>
									<td>System Architect</td>
									<td>Edinburgh</td>
									<td>61</td>
									<td>2011/04/25</td>
									<td>$320,800</td>
								</tr>
								<tr>
									<td>Garrett Winters</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>63</td>
									<td>2011/07/25</td>
									<td>$170,750</td>
								</tr>
								<tr>
									<td>Donna Snider</td>
									<td>Customer Support</td>
									<td>New York</td>
									<td>27</td>
									<td>2011/01/25</td>
									<td>$112,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card-footer small text-muted">Updated yesterday at
					11:59 PM</div>
			</div>

		</div>


</body>

</html>