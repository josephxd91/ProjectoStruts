<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Carbon - Admin Template</title>

<link rel="stylesheet" href="resources/css/simple-line-icons.css">
<link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
<link rel="stylesheet" href="resources/css/styles.css">

</head>
<body class="sidebar-fixed header-fixed">
	<div class="page-wrapper">
		<tiles:insertAttribute name="header" />
		<div class="main-container">
			<tiles:insertAttribute name="naver" />
			<div class="content" id="body_content_change">
				<tiles:insertAttribute  name="body" />
			</div>
		</div>

	</div>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/chart.min.js"></script>
	<script src="resources/js/carbon.js"></script>
	<script src="resources/js/demo.js"></script>
	<script src="resources/js/script.js"></script>

</body>
</html>