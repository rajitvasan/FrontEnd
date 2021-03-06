<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<style>
		h2#registrationPageHeading
		{
			margin-bottom:100px;
			text-align:center;
		}
</style>

</head>
	<body>
		<div class="header-content" id="home">
			<div class="header-content-inner">
				<h2 id="registrationPageHeading">Login Page</h2>
				<c:if test="${not empty error}">
					<div class="error">${error}</div>
				</c:if>
				
				<c:if test="${param.error!=null}">        
					<p style="color:red;">Invalid username and password.</p>
				</c:if>
				<c:if test="${param.logout!=null}">       
					<p>You have been logged out.</p>
				</c:if>
	
				<c:url value="/login" var="loginUrl"/>
            	<%--   <form:form method="post" action="j_spring_security_check" --%>
             	<form method="post" action="${loginUrl }" class="form-horizontal">
				    <div class="form-group">
    					<label class="control-label col-sm-2" for="pwd">Name:</label>
    					<div class="col-sm-10"> 
      						<%-- <form:input class="form-control" id="pwd" placeholder="Enter name" path="username"/> --%>
      						<input class="form-control" id="pwd" placeholder="Enter name" name="username">
    					</div>
  					</div>
  
  					<div class="form-group">
    					<label class="control-label col-sm-2" for="pwd">Password:</label>
    					<div class="col-sm-10"> 
      						<%-- <form:input type="password" class="form-control" id="pwd" placeholder="Enter password" path="password"/> --%>
       						<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password"/>
    					</div>
  					</div>
  					
					<div class="form-group"> 
    					<div class="col-sm-offset-2 col-sm-10">
      						<div class="checkbox">
        						<label><input type="checkbox"> Remember me</label>
      						</div>
    					</div>
  					</div>
  					
  					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<div class="form-group"> 
    					<div class="col-sm-offset-2 col-sm-10">
      						<button type="submit" class="btn btn-default">Login</button>
    					</div>
  					</div>
				</form>
            </div>
        </div>
</body>
</html>