<%-- 
    Document   : ViewParameter
    Created on : Aug 8, 2018, 1:57:15 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="include/NavBar.jsp"></jsp:include>
        <h1>Favorite Subject :: </h1>
        <hr>
        <form action="TestRequestParam" method="post">
            Your Student id : <input type="text" name="id" /><br>
            Your Name : <input type="text" name="name"/><br>
            Favorite subject :<br>
            <input type="checkbox" name="subjects" value="WebProgramming" >Web Programming<br>
            <input type="checkbox" name="subjects" value="Computer Network">Computer Network<br>
            <input type="checkbox" name="subjects" value="Network Programming">Network Programming<br>
            <input type="checkbox" name="subjects" value="Database Adiministrator">Databases Adiministrator<br>
            <input type="checkbox" name="subjects" value="Software Process">Software Process<br>
            <input type="checkbox" name="subjects" value="Computer Security">Computer Security<br>
            <input type="submit"/>
        </form>
        <hr>
        <table>
            <tr>
                <td>Student ID:</td>
                <td>${param.id}</td>
            </tr>
            <tr>
                <td>Student Name:</td>
                <td>${param.name}</td>
            </tr>
            <tr>
                <td>Your Favorite Subjects :</td>
                <td>
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br>
                    </c:forEach>
                </td>
            </tr>
        </table>
    </body>
</html>
