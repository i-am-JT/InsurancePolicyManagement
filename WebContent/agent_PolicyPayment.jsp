<%@ page import="JDBC.jsp.*"%>
<%@ page import="a_JDBC.jsp.*"%>
<%@ page import="java.sql.*"%>
<head>
<link href="dashboard/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<script type="text/javascript" src="dashboard/vendor/jquery/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".checkout_done").click(function() {
			var pol_no = $(this).attr('id');
			$('#amain').load('agent_checkout.jsp?pol_no=' + pol_no);
		});

		$("#cont").delegate('.checkout_done', 'click', function() {
			var pol_no = $(this).attr('id');
			$('#amain').load('agent_checkout.jsp?pol_no=' + pol_no);
		});

		$("#search-name").keyup(function() {
			name = $("#search-name").val();
			$.ajax({
				type : "POST",
				url : "search_payment.jsp",
				data : "name=" + name,
				success : function(data) {
					$("#cont").html(data);
				}
			});
		});

	});
</script>


</head>

<body>
	<!-- Page Content -->
	<div class="container" style="max-width: 150%;">

		<!-- Page Heading -->
		<span style="font-size:2.5em;color: #03275A;" class="my-4">Premium Payments</span>
		<form style="margin-top:-2em;">
			<div class="input-group">
				<input style="margin-top: 2.0em;margin-left:78%;max-width:15%;" type='text' id="search-name"
					class='form-control' placeholder='Search all plans...'> <span
					class="input-group-btn">
					<button class="btn btn-primary" style="margin-top: 2.0em;"
						type="button">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>

		<div>

			<div class="row"
				style="padding: 3em; padding-left: 0; color: #03275A">
				<div class="col-md-12">
					<div class="row" style="text-align: center;">
						<div class="col-md-1" style="font-size: 1.6em; color: grey;">

						</div>
						<div class="col-md-3" style="font-size: 1.6em; color: grey;">
							Customer name</div>
						<div class="col-md-2" style="font-size: 1.6em; color: grey;">
							Policy name</div>
						<div class="col-md-2" style="font-size: 1.6em; color: grey;">
							Premium</div>
						<div class="col-md-1"
							style="font-size: 1.6em; color: grey; padding-right: 1.65em;">
							Due in</div>
						<div class="col-md-2" style="font-size: 1.6em; color: grey;">
							Due Date</div>

					</div>
					<hr>
					<%
						int agent_id = (Integer) session.getAttribute("Id");
						int pols[] = new int[30];
						int day_diff[] = new int[30];
						int cust_id[] = new int[30];
						int pol_no[] = new int[30];
						int cnt = 0, acnt = 0;
						int details[][] = new Details().c_details(agent_id);

						/*int day_diff[] = new int[30];
						String sql1 = "select pol_no from customer_policy where cust_id=?";*/
						//String sql2 = "select datediff(curdate(),?)";
						for (int i = 0; i < 30; i++) {
							if (details[i][1] == 0) {
								break;
							} else {
								cust_id[cnt] = details[i][0];
								pol_no[cnt] = details[i][1];
								day_diff[cnt] = new Premium().date(cust_id[cnt], pol_no[cnt]);
								cnt++;
							}
						}
						for (acnt = 0; acnt < cnt; acnt++) {
							String name[] = new Cust_name().c_name(cust_id[acnt]);
							String first = name[0];
							String mid = name[1];
							String last = name[2];
							String full = first + " " + mid + " " + last;
					%>
					<!-- Project One -->



					<div class="row"
						style="text-align: center; margin-top: 3em; padding: 2em;">


						<div class="col-md-1">

							<span style="font-size: 1.6em;"> <%
 	out.println(acnt + 1);
 %>
							</span>


						</div>
						<div class="col-md-3">
							<h2>
								<%
									out.println(full);
								%>
							</h2>
						</div>



						<div class="col-md-2">

							<span style="font-size: 1.6em;"> <%
									out.println(new Prem_name().p_name(pol_no[acnt])); %>
							</span>

						</div>

						<div class="col-md-2">

							<span style="font-size: 1.6em;"> <%
 	int prem[] = new Prem_amount().p_details(pol_no[acnt]);
 		out.println(prem[0]);
 %>
							</span>


						</div>


						<div class="col-md-1">

							<span style="font-size: 1.6em;"> <%
 	if (day_diff[acnt] < 0) {
 			out.println("<span style='color:red'>Late</span>");
 		} else if (day_diff[acnt] == 0) {
 			out.println("<span style='color:red'>Today</span>");
 		} else if (day_diff[acnt] > 0) {

 			out.println(day_diff[acnt] + " days");
 			//+ " days on " + new Prem_date().due_date(id, pols[acnt]) + ".");

 		}
 %>
							</span>

						</div>


						<div class="col-md-2">
							<span style="font-size: 1.6em; padding-left: 1.8em;"> <%
 	if (day_diff[acnt] < 0)
 			out.println("-");
 		else
 			out.println(new Prem_date().due_date(cust_id[acnt], pol_no[acnt]));
 %></span>
						</div>


						<a class=" btn btn-primary checkout_done"
							style="color: white; margin-left: 2em; margin-bottom: 2.5em;"
							id="<%out.print(pol_no[acnt]);%>">Pay now</a>
					</div>




					<hr>

					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
</body>


</html>