<%@page import="icsd.DBHandlerpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>
<%

String strBtn=request.getParameter("btn");
if(strBtn!=null)
{
	if(strBtn.equals("Delete Values"))
	{
		DBHandlerpl objDH= new DBHandlerpl();
		String strSelectedSaIds[]=request.getParameterValues("chb");
		for(String strvideoid:strSelectedSaIds)
		{
			System.out.println(strvideoid);
		}
		objDH.deleteMultipalRows(strSelectedSaIds);;
		out.println("Data deleted");
		System.out.println("data deleted from pl");
		
		 out.println("<script>");
   	 out.println("alert('Data Deleted')");
   	 out.println("</script>");
		System.out.println("Programming language deleted");
	}
	
}
%>
<a href='adminpl.jsp' class="btn btn-primary">go to Admin Programming Language Page</a>





</body>
</html>