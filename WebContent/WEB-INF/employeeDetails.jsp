<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<h3>${employeedetails}</h3>
<table>
<tr>
<th>Name</th>
<th>Telephone</th>
<th>Email</th>
<th>Address</th>
<th></th>
<th></th>
</tr>
<c:forEach var="emp" items="${emplist}">
<tr>
<td>${emp.empName}</td>
<td>${emp.empTel}</td>
<td>${emp.empEmail}</td>
<td>${emp.empAdd}</td>
<td><a href="editEmployee/${emp.empId}">Edit</a></td>
<td><a href="deleteEmployee/${emp.empId}">Delete</a></td>
</tr>
</c:forEach>
</table>
<a href="addEmployee">Add New Employee</a>
</body>
</html>