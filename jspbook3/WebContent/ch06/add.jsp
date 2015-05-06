<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String productname = request.getParameter("product");
		ArrayList<String> list = (ArrayList) session.getAttribute("productlist");
		if (list == null) {
			list = new ArrayList<String>();
			session.setAttribute("productlist", list);
		}
		list.add(productname);
	%>

</body>
</html>