<%-- 
    Document   : admin
    Created on : 08-Jul-2020, 15:15:56
    Author     : voire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <h1>Welcome, ${sessionScope.loginUser}</h1>
        <form action="ManageServlet" method="POST">
            FirstName: <input type="text" name="firstname" value="${employee.firstname}"/><br>
            LastName: <input type="text" name="lastname" value="${employee.lastname}"/><br>
            Email: <input type="text" name="email" value="${employee.email}"/><br>
            
            <input  type="submit" name="action" value="ADD"/>
            <input  type="submit" name="action" value="EDIT"/>
            <input  type="submit" name="action" value="DELETE"/>
            <input  type="submit" name="action" value="VIEW"/>
        </form>
            
            <table>
                <th>Employee ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <c:forEach var="emp" items="${getAllEmployee}">
                <tr>
                    <td>${emp.empid}</td>
                    <td>${emp.firstname}</td>
                    <td>${emp.lastname}</td>
                    <td>${emp.email}</td>
                </tr>
                </c:forEach>
            </table>
    </body>
</html>
