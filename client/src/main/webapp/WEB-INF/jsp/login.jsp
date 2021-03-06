<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>Log in</title>
    <link rel="stylesheet" href="css/site.css">
</head>
<body>
    <h1>Advanced Stock Monitoring</h1>
	<div class="login-form">
		<h1>Log in</h1>
		<c:if test="${not empty param.login_error}">
			<div class="warning">
				Your login attempt was not successful, try writing "user" and
				"password".
			</div>
		</c:if>
	
		<form name="f" action="<c:url value='j_spring_security_check'/>"
			method="POST">
			<table>
				<tr>
					<td class="form-label">Username:</td>
					<td><input type='text' name='j_username'
						value='<c:if test="${not empty param.login_error}"><c:out value="${SPRING_SECURITY_LAST_USERNAME}"/></c:if>' /></td>
				</tr>
				<tr>
					<td class="form-label">Password:</td>
					<td><input type='password' name='j_password'></td>
				</tr>
				<tr>
					<td></td>
					<td><label><input type="checkbox" name="_spring_security_remember_me">Remember me</label></td>
				</tr>
	
				<tr>
					<td></td>
					<td><input name="submit" type="submit" value="Log in"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
