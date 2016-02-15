<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<c:if test="${not empty error}">
			<h1>${error}</h1>
		</c:if>
		
		<form action="${pageContext.request.contextPath}/j_spring_security_check" method="POST">

		    <table>
			<tr>
				<td>FUCKUser:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
			        <td colspan='2'>
                                <input name="submit" type="submit" value="submit" />
                                </td>
			</tr>
		   </table>

		   <input type="hidden" 
                     name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
</body>
</html>