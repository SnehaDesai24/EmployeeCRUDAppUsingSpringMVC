<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <script src="ui-bootstrap-tpls-2.4.0.min.js"></script> -->
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-md-2">
</div>
<div class="col-md-10">
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-3"><h3>${employeedetails}</h3></div>
</div>
<form action="saveEmployee" method="post" name="empAddForm" class="form-horizontal">
<div class="form-group">
<label class="control-label col-md-2" for="empName">Employee Name:</label>
<div class="col-md-4">
<input type="text" name="empName" class="form-control col-md-8" />
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="empTel">Employee Telephone:</label>
<div class="col-md-4">
<input type="text" name="empTel" class="form-control col-md-8" />
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="empEmail">Employee Email:</label>
<div class="col-md-4">
<input type="text" name="empEmail" class="form-control col-md-8" />
</div>
</div>
<div class="form-group">
<label class="control-label col-md-2" for="empAdd">Employee Address:</label>
<div class="col-md-4">
<input type="text" name="empAdd" class="form-control col-md-8" />
</div>
</div>
<div class="form-group">        
<div class="col-sm-offset-2 col-sm-4">
<input type="submit" class="btn btn-primary" name="empsubmit" />
</div>
</div>
</form>
</div>
</div>
</div>
</body>
</html>
