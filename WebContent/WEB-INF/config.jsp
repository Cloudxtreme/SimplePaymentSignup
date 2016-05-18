<!DOCTYPE html>
<html>
<head>
<title>Simple Signup Payment</title>
<link rel='stylesheet' type='text/css' href='common.css' />
</head>
<body>
	<form>
		<h3>Tourney Information</h3><br />
		Name <input type='text' id='config_name' class='config_textbox' hint='The Tournament Name' /> <br />
		Date <input type='date' id='config_date' class='config_date' /> <br />
		Location <input type='text' id='config_location' class='config_textbox' hint='The Location of the Tournament' /> <br />
		PreRegistration Fee <input type='number' if='config_prereg_fee' class='config_number'> <br />
		<br />
		<hr />
		<h3>Events Held</h3>
		<br/>
		<h5>Melee</h5>
		<input type='checkbox' id='config_melee_singles' class='config_checkbox' /> Singles<br />
		<input type='checkbox' id='config_melee_doubles' class='config_checkbox' /> Doubles<br />
		<br/>
		<h5>Project M</h5>
		<input type='checkbox' id='config_pm_singles' class='config_checkbox' /> Singles<br />
		<input type='checkbox' id='config_pm_doubles' class='config_checkbox' /> Doubles<br />
		<h5>Smash 4</h5>
		<input type='checkbox' id='config_smash4_singles' class='config_checkbox' /> Singles<br />
		<input type='checkbox' id='config_smash4_doubles' class='config_checkbox' /> Doubles<br />
		<br />
		<hr />
		<br />
		<input type='button' id='config_submit' value='Submit Tournament' class='config_button' />
	</form>
</body>
<!-- 
<script src='../node_modules/angular/angular.min.js' ></script>
<script src='../node_modules/bootstrap/dist/js/bootstrap.min.js' ></script>
-->
<script src='../node_modules/jquery/dist/jquery.min.js'></script>
<script src='scripts/objects.js' ></script>
<script src='script.js'></script>
</html>