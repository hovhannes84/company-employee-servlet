<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Comp
  Date: 25.04.2023
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
</head>

<body>
<%List<Company> companies = (List<Company>) request.getAttribute("companies"); %>
<%Employee employee = (Employee) request.getAttribute("employee");%>
<a href="/employees"> Back </a>
<h2>Update Employee</h2>
<form action="/updateEmployee" method="post">
    <input name="id" type="hidden" value="<%=employee.getId()%>">
    name: <input type="text" name="name" value="<%=employee.getName()%>"><br>
    surname: <input type="text" name="surname" value="<%=employee.getSurname()%>"><br>
    email: <input type="text" name="email" value="<%=employee.getEmail()%>"><br>

    company:
    <select name="company">
        <% for (Company company : companies) { %>
        <option value="<%=company.getId()%>"><%=company.getName()%></option>
        <% }%>
    </select>
    <input type="submit" value="create">

</form>


</body>
</html>
