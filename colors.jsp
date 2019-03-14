<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%! String[] names={"Green","Cyan","Black","Red","Yellow","Pink"}; %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List of colors</h1>
<table border="0">
<th>Name</th>
<% for(int i=0;i<names.length;i++){
	
	
	%>
	<tr>
	<td bgcolor="<%=names[i] %>" width="200"><%=names[i] %></td>
	</tr>
	<%} %></table>

</body>
</html>
