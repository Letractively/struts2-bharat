<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
registeration page
<s:form theme="simple" action="save" method="post" namespace="/" theme="simple">
	<table border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>College Name : </td>
			<td><s:textfield name="name"/></td>
			<td></td>
		</tr>
		<tr>
			<td>Affiliation</td>
			<td><s:textfield name="Affiliation" /></td>
			<td></td>
		</tr>
		<tr>
			<td>about</td>
			<td><s:textfield name="about"/> </td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td><s:submit /> </td>
			<td></td>
		</tr>
	</table>
</s:form>
</body>
</html>