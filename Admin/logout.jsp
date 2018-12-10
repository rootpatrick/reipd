<%-- 
    Document   : logout
    Created on : Dec 27, 2017, 2:15:24 AM
    Author     : boniface
--%>

<%@page import="adminOp.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Connect c=new Connect();
    try {
    if (session!=null){
    session.invalidate();}
    response.sendRedirect(c.domain()+"Admin/index.html");}
    
catch(Exception e)
{
}
%>