<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="JDBC.jsp.*"%>
<%
		String pname = request.getParameter("policy_name");
		String pno = request.getParameter("policy_number");
		String dur = request.getParameter("duration");
		String lfee = request.getParameter("late_fee");
		String prem = request.getParameter("premium");
		String comm = request.getParameter("commision");
		
		Add_pol p = new Add_pol();
		p.addNewPolicy(pname,pno,dur,lfee,prem,comm);
		//c.addCustInfo(1, "w", "e", "r", "t", "y", "ed", "01/01/0101", "u", "i", "o","1");
		//response.sendRedirect("aindex.jsp?policy="+policy+"&first_name="+fname+"&middle_name="+mname+"&last_name="+lname+"&email="+email+"&phone="+phone+"&address="+add+"&dob"+dob+"&uname="+uname+"&passd="+passwd+"&desig="+desig);
	%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {
	$("#goHome").click(function() {
		$('#main').load('admin_main.jsp');
	});
	$("#addPol").click(function() {
		$('#main').load('addNewPolicy.jsp');
	});
	
	
	
	
});

</script>
</head>
<body>
<div id="main">
<h1>Policy Added Successfully</h1>
<button id="addPol" class="btn btn-primary">Add another customer</button>
<button id="goHome" class="btn btn-primary">Go to Dashboard</button>
</div>
</body>
</html>