
<?php include'bootstrap.php';?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
	<link href="style2.css?v=<?php echo time(); ?>" rel="stylesheet" type="text/css">
</head>

<body>
	<h1>Add employee details</h1>
  <div class="overall">
    <form id="update" method="post" class="u-admin">
  		<fieldset>
  			<div class="name">
  				<label for="fname">First name:<span class="required">*</span></label><input type="text" id="fname" placeholder="Your name" required>
  				<label for="fname">Middle name(if any):</label><input type="text" id="mname" placeholder="Middle name ">
  				<label for="fname">Last name:<span class="required">*</span></label><input type="text" id="lname" placeholder="Surname" required><br>
  			</div>
  			<div class="details">
  				<label for="email">Email ID:<span class="required">*</span></label><input type="email" id="email"  required><br>
  				<label for="phone">Phone number:<span class="required">*</span></label><input type="tel" id="phone"   ><br>
  			</div>
  			<div class="department">
          <label for="deptmnt" required>Department:<span class="required">*</span></label>
  				<select id="depts">
  			<option value="0">Choose one!</option>
  	    <option value="1">Human Resources</option>
  	    <option value="2">Sales</option>
  	    <option value="3">Marketing</option>
  	    <option value="4">Research and Development</option>
  	    <option value="5">Finance</option></select>
      </select>
  			</div>
  		 <br>
  		 <div class="reason">
  			 <label for "reason">Permanent Address:<span class="required">*</span></label><textarea class="addr" required></textarea><br>
  		 </div>
  			<br>
  			<button class="submit" >Update Details</button>
  			<button type="submit" class="cancel" >Cancel</button>
  		</fieldset>
  	</form>
  </div>
</body>
</html>
