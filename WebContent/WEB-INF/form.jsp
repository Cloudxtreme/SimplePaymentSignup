<!DOCTYPE html>
<html>
<head>
<title>Simple Signup Payment</title>
<link rel='stylesheet' type='text/css' href='common.css' />
</head>
<body>
	<form>
		<h3>Personal Information</h3>
		Name: <input type='text' id='signup_name' class='signup_text' /><br />
		Tag: <input type='text' id='signup_tag' class='signup_text' /><br />
		Region: <input type='text' id='signup_region' class='signup_text' /><br />
		<hr />
		<h3>Events</h3>
		<br />
		<h5>Melee</h5>
		<br />
		<input type='checkbox' id='signup_melee_singles' class='signup_checkbox' /> Singles <br /> 
		<input type='checkbox' id='signup_melee_doubles' class='signup_checkbox' /> Doubles <br /> <br />
		<h5>Project M</h5>
		<br />
		<input type='checkbox' id='signup_pm_singles' class='signup_checkbox' /> Singles <br /> 
		<input type='checkbox' id='signup_pm_doubles' class='signup_checkbox' /> Doubles <br /> <br />
		<h5>Smash 4</h5>
		<br /> 
		<input type='checkbox' id='signup_smash4_singles' class='signup_checkbox' /> Singles <br /> 
		<input type='checkbox' id='signup_smash4_doubles' class='signup_checkbox' /> Doubles <br /> <br />
		<hr />
		<p id='signup_total_p' class='signup_p'></p>
		<hr />
	</form>
	<!-- PAY PAL Button Goes Here -->
	<!-- SIMPLE BUTTON. PAYS PREREGISTRATION FEE ONLY -->
	<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
		<input type="hidden" name="cmd" value="_xclick">
		<input type="hidden" name="business" value="bcooke91@gmail.com">
		<input type="hidden" name="lc" value="GB">
		<input type="hidden" name="item_name" value="Preregistration Fee">
		<input type="hidden" name="amount" value="10.00">
		<input type="hidden" name="currency_code" value="USD">
		<input type="hidden" name="button_subtype" value="services">
		<input type="hidden" name="no_note" value="0">
		<input type="hidden" name="bn" value="PP-BuyNowBF:btn_paynowCC_LG.gif:NonHostedGuest">
		<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_paynowCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
		<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
	</form>
		
		<!-- MORE SPECIFIC. INVOLVES BUYING INTO ALL GAMES SELECTED -->
		<!-- 
		<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
			<input type="hidden" name="cmd" value="_xclick">
			<input type="hidden" name="business" value="bcooke91@gmail.com">
			<input type="hidden" name="lc" value="GB">
			<input type="hidden" name="item_name" value="Tournament Fee">
			<input type="hidden" name="button_subtype" value="services">
			<input type="hidden" name="no_note" value="0">
			<input type="hidden" name="currency_code" value="USD">
			<input type="hidden" name="bn" value="PP-BuyNowBF:btn_paynow_LG.gif:NonHostedGuest">
			<table>
			<tr><td><input id='tournament_costs_dd' type="hidden" name="on0" value="Tournament Costs">Tournament Costs</td></tr><tr><td><select name="os0">
				<option value="Just Venue">Just Venue $10.00 USD</option>
				<option value="1 Event">1 Event $15.00 USD</option>
				<option value="2 Events">2 Events $20.00 USD</option>
				<option value="3 Events">3 Events $25.00 USD</option>
				<option value="4 Events">4 Events $30.00 USD</option>
				<option value="5 Events">5 Events $35.00 USD</option>
				<option value="6 Events">6 Events $40.00 USD</option>
			</select> </td></tr>
			</table>
			<input type="hidden" name="currency_code" value="USD">
			<input type="hidden" name="option_select0" value="Just Venue">
			<input type="hidden" name="option_amount0" value="10.00">
			<input type="hidden" name="option_select1" value="1 Event">
			<input type="hidden" name="option_amount1" value="15.00">
			<input type="hidden" name="option_select2" value="2 Events">
			<input type="hidden" name="option_amount2" value="20.00">
			<input type="hidden" name="option_select3" value="3 Events">
			<input type="hidden" name="option_amount3" value="25.00">
			<input type="hidden" name="option_select4" value="4 Events">
			<input type="hidden" name="option_amount4" value="30.00">
			<input type="hidden" name="option_select5" value="5 Events">
			<input type="hidden" name="option_amount5" value="35.00">
			<input type="hidden" name="option_select6" value="6 Events">
			<input type="hidden" name="option_amount6" value="40.00">
			<input type="hidden" name="option_index" value="0">
			<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_paynow_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
			<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
		-->
</body>
<!-- 
<script src='../node_modules/angular/angular.min.js' ></script>
<script src='../node_modules/bootstrap/dist/js/bootstrap.min.js' ></script>
-->
<script src='../node_modules/jquery/dist/jquery.min.js'></script>
<script src='scripts/objects.js'></script>
<script src='scripts/script.js'></script>
</html>