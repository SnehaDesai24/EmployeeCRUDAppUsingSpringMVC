<html>
<body>
<h3>${employeedetails}</h3>
<form action="editsave" method="post">
<table>
<tr>
<td> Employee Name: </td><td><input type="text" name="empName" value="${bean.empName}"/></td>
</tr>
<tr>
<td> Employee Telephone: </td><td><input type="text" name="empTel" value="${bean.empTel}"/></td>
</tr>
<tr>
<td> Employee Email: </td><td><input type="text" name="empEmail" value="${bean.empEmail}"/></td>
</tr>
<tr>
<td> Employee Address: </td><td><input type="text" name="empAdd" value="${bean.empAdd}"/></td>
</tr>
<tr>
<td></td><td><button>Save</button></td>
</tr>
<tr>
<td></td><td><input name="empId" value="${bean.empId}" hidden=true /></td>
</tr>
</table>
</form>
</body>
</html>