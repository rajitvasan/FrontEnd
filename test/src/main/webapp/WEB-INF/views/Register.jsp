<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<title>Registration Page</title>
</head>
<body>
	<div class="container">
	<form:form method="post" action = "/RegisterUser" modelAttribute="user" class="form-horizontal"> 
	<fieldset>
		
		<legend>Register</legend>
		    		
		<!-- Username -->
		<div class="form-group">
			<form:label class="control-label" name="username" path="username">Username </form:label>
			<div class="controls">
				<form:input path="username"  placeholder="username" class="input-xlarge"></form:input>
				<p class="help-block">Username can contain any letters or numbers, without spaces</p>
			</div>
		</div>
		
		<!-- Password -->
      	<div class="form-group">
      		<form:label class="control-label" name="password" path="password">Password</form:label>
      		<div class="controls">
      			<form:input type = "password" path="password"  placeholder="password" class="input-xlarge"></form:input>
				<p class="help-block">Password should be at least 4 characters</p>
      		</div>
    	</div>
    	
    	<!-- customer Name-->
		<div class="form-group">
			<form:label class="control-label" name="custName" path="custName">Customer Name</form:label>
			<div class="controls">
				<form:input path="custName"  placeholder="custName" class="input-xlarge"></form:input>
			</div>
		</div>
		
		<!-- Role -->
		<div class="form-group">
			<form:label class="control-label" name="role" path="role">Role</form:label>
			<div class="controls">
				<form:input path="role"  placeholder="role" class="input-xlarge"></form:input>
			</div>
		</div>
		
		<!--  Button  -->
		<div class="form-group"> 
    		<div class="col-sm-offset-2 col-sm-10">
      		<button type="submit" class="btn btn-default">Register</button>
    		</div>
  		</div>
	
	</fieldset>
	</form:form>
	</div>
	
</body>
</html>
