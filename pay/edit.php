<?php include'bootstrap.php';?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
	<link href="style2.css" rel="stylesheet" type="text/css">
</head>

<body>
	<h1>Update employee details</h1>
	<form id="update" method="post" class="u-admin">
		<fieldset>
			<div class="name">
				<label for="fname">First name:<span class="required">*</span></label><input type="text" id="fname" placeholder="Your name" required>
				<label for="fname">Middle name(if any):</label><input type="text" id="mname" placeholder="Middle name ">
				<label for="fname">Last name:<span class="required">*</span></label><input type="text" id="lname" placeholder="Surname" required><br>
			</div>
			<fieldset id="personaldetails">
				<div class="blood">
					<label for="qualify">Qualifications:</label><input type="text" id="qualify">
					<label for="blood">Blood Group:</label><input type="text" id="qualify"><br>
				</div>
			</fieldset>
			<div class="details">
				<label for="email">Email ID:<span class="required">*</span></label><input type="email" id="email"  required><br>
				<label for="phone">Phone number:<span class="required">*</span></label><input type="tel" id="phone"   ><br>
				<label for="exp">Experience:</label><input type="text" id="exp"><br>
				<label for="deptmnt" required>Department:<span class="required">*</span></label>
			</div>
			<div class="department">
				<select id="depts">
			<option value="0">Choose one!</option>
	    <option value="1">Human Resources</option>
	    <option value="2">Sales</option>
	    <option value="3">Marketing</option>
	    <option value="4">Research and Development</option>
	    <option value="5">Finance</option></select>
				<label for "desgntn">Designation:<span class="required">*</span></label>
				<select id="desigs">
	    <option value="0">Choose one!</option>
	    <option value="1">Manager</option>
	    <option value="2">Deputy Manager</option>
	    <option value="3">Project Head</option>
	    <option value="4">Senior</option>
	    <option value="5">Trainee</option>
				</select>
			</div>
		 <br>
		 <div class="address">
			 <label for "address">Permanent Address:<span class="required">*</span></label><textarea class="addr" required></textarea><br>
 			<label for "salary">Salary:</label><input type="number" id="salary" readonly><button onClick="document.location='salary.php'" class="u-salary">Update Salary</button>
		 </div>
			<br>
			<button onClick="document.location='view.php'"  class="submit" >Update Details</button>
			<button type="submit" class="cancel" >Cancel</button>
		</fieldset>
	</form>
</body>
</html>
