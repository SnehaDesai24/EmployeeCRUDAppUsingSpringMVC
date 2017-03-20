<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script src="ui-bootstrap-tpls-2.4.0.min.js"></script> -->
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-10">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-8"><h3>${employeedetails}</h3></div>
</div>
<table class="table table-striped" style="width:70%;border:1px solid black;">
<tr style="background-color:#99ff33;">
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
<td><a href="editEmployee/${emp.empId}"><button class="btn btn-info">Edit</button></a></td>
<td><a href="deleteEmployee/${emp.empId}"><button class="btn btn-warning">Delete</button></a></td>
</tr>
</c:forEach>
</table>
<a href="addEmployee"><button class="btn btn-primary">Add New Employee</button></a>
</div>
</div>
</div>
</body>
</html>
