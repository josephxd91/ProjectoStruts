<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	response.addHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.addHeader("Cache-Control", "pre-check=0,post-check=0");
	response.setDateHeader("Expires", 0);
%>


<s:if test="%{#session.isEmpty}">
	<script>
			window.location="login";
	</script>
</s:if>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- <meta http-equiv="Cache-control" content="must-revalidate"> -->
<!-- <meta http-equiv="Cache-control" content="no-cache"> -->
<!-- <meta http-equiv="Cache-control" content="no-store"> -->
<!-- <meta http-equiv="Pragma" content="no-store"> -->
<!-- <meta http-equiv="expires" content="0" /> -->


<title>Carbon - Admin Template</title>

<link rel="stylesheet" href="resources/css/simple-line-icons.css">
<link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
<link rel="stylesheet" href="resources/css/styles.css">




<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/chart.min.js"></script>
<script src="resources/js/carbon.js"></script>
<script src="resources/js/demo.js"></script>
<script src="resources/js/function.js"></script>





</head>
<body class="sidebar-fixed header-fixed" id="body_content">
<!-- 	Welcome to Profile, -->
<%-- 	<s:property value="#session.user.username" /> --%>



	<div class="page-wrapper">
		<tiles:insertAttribute name="header" />
		<div class="main-container">
			<tiles:insertAttribute name="naver" />
			<div class="content" id="body_content_change">
				<tiles:insertAttribute name="body" />




			</div>
		</div>

	</div>


	<div class="modal fade" id="modal-12" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content bg-warning">
				<div class="modal-header border-0">
					<h5 class="modal-title text-white">Aviso desconexion del
						sistema</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body text-white p-5">
					Se ha detectado inactividad por parte del usuario , se desconectara
					de su sesion dentro de . <span
						class="h1 d-block font-weight-normal mb-6"><i
						class="icon icon-clock"></i>&nbsp;<i id="lblTime">00:00</i></span>
					<div class="h2 text-muted"></div>
				</div>

			</div>
		</div>
	</div>



</body>
</html>