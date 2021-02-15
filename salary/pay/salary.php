<?php include 'bootstrap.php';?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
	<link href="style2.css" rel="stylesheet" type="text/css">
</head>

<body>
	<h1>Salary details</h1>
	<form id="i-salary">
		<fieldset>
			<label for "b-salary">Basic Salary:</label><input type="number" class="b-salary"><br>
			<fieldset id="allowances">
				<label for "hra">House Rent Allowance:</label><input type="number" class="hra"><label for "lta">Leave Travel Allowance:</label><input type="number" class="lta"><br>
				<label for "ca">Conveyance Allowance:</label><input type="number" class="ca"><label for "da">Dearness Allowance:</label><input type="number" class="da"><br>
				<label for "ma">Medical Allowance:</label><input type="number" class="hra"><label for "sa">Special Allowance:</label><input type="number" class="sa"><br>
			</fieldset>
			<label for "g-salary">Gross Salary:</label><input type="number" class="g-salary"><br>
			<fieldset id="deductions">
				<label for="epf">Employees' Provident Fund:</label><input type="number" class="epf"><label for="pt">Professional Tax:</label><input type="number" class="pt"><label for="it">Income Tax:</label><input type="number" class="it"><br><label for="od">Other Deductions:</label><input type="number" class="epf"><br>
				<label for="lt">Leave Taken:</label><input type="number" class="lt" readonly><label for="ld">Leave Deductions:</label><input type="number" class="ld" readonly>
			</fieldset>
			<label for "n-salary">Net Salary:</label><input type="number" class="n-salary"><br>
		</fieldset>
		<button onClick="document.location='view.php'"  class="submit" >Confirm</button>
			<button type="submit" class="cancel" >Cancel</button>
	</form>
</body>
</html>