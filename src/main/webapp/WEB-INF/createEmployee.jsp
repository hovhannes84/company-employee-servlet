<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Comp
  Date: 25.04.2023
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companies"); %>
<body>
<a href="/companies"> Back </a>
<h2>Create Employees</h2>
<form action="/createEmployee" method="post">

    name: <input type="text" name="name"><br>
    surname: <input type="text" name="surname"><br>
    email: <input type="text" name="email"><br>

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
