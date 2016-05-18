var checkedEventsSignup = 0;
var checkedEventsConfig = 0;
var tagBody = '(?:[^"\'>]|"[^"]*"|\'[^\']*\')*';

var tagOrComment = new RegExp(
    '<(?:'
    // Comment body.
    + '!--(?:(?:-*[^->])*--+|-?)'
    // Special "raw text" elements whose content should be elided.
    + '|script\\b' + tagBody + '>[\\s\\S]*?</script\\s*'
    + '|style\\b' + tagBody + '>[\\s\\S]*?</style\\s*'
    // Regular name
    + '|/?[a-z]'
    + tagBody
    + ')>',
    'gi');
function removeTags(html) {
  var oldHtml;
  do {
    oldHtml = html;
    html = html.replace(tagOrComment, '');
  } while (html !== oldHtml);
  return html.replace(/</g, '&lt;');
}

//ITERATE THROUGH ALL SIGNUP CHECKBOXES
function chekedSignupEvents(){
	checkedEventsSignup = 0;
	$('.signup_checkbox').each(function(){
		if($(this).checked){
			checkedEventsSignup ++;
		}
	});
};

function resetSignupCheckboxes(){
	checkedEventsSignup = 0;
	$('.signup_checkbox').each(function(){
		$(this).prop('checked', false);
	});
};

//ITERATE THROUGH ALL CONFIG CHECKBOXES
function checkedConfigEvents(){
	checkedEventsConfig = 0;
	$('.config_checkbox').each(function(){
		if($(this).checked){
			checkedEventsConfig ++;
		}
	});
};

function resetConfigCheckboxes(){
	checkedEventsConfig = 0;
	$('.config_checkbox').each(function(){
		$(this).prop('checked', false);
	});
};

function validateSignupEvents(){
	$('#tournament_costs_dd').each(function(){
		var ddValue = $(this).val().toString();
		switch(checkedSignupEvents){
		case 0:
			if(! ddValue.includes('$10.00'))
				error('$10.00 choice means no events.');
			break;
		case 1:
			if(! ddValue.includes('$15.00'))
				error('$15.00 choice means 1 event.');
			break;
		case 2:
			if(! ddValue.includes('$20.00'))
				error('$20.00 choice means 2 events.');
			break;
		case 3:
			if(! ddValue.includes('$25.00'))
				error('$25.00 choice means 3 events.');
			break;
		case 4:
			if(! ddValue.includes('$30.00'))
				error('$30.00 choice means 4 events.');
			break;
		case 5:
			if(! ddValue.includes('$35.00'))
				error('$35.00 choice means 5 events.');
			break;
		case 6:
			if(! ddValue.includes('$40.00'))
				error('$40.00 choice means 6 events.');
			break;
		default:
			break;
		}
	});		
};


function error(msg){
	alert(msg);
};

//BUILD TOURNAMENT OBJECT
function buildEventsObject(configTF){
	var meleeSingles = false;
	var meleeDoubles = false;
	var pmSingles = false;
	var pmDoubles = false;
	var smash4Singles = false;
	var smash4Doubles = false;
	
	if(configTF){
		meleeSingles  = $('#config_melee_singles').checked;
		meleeDoubles  = $('#config_melee_doubles').checked;
		pmSingles     = $('#config_pm_singles').checked;
		pmDoubles	  = $('#config_pm_doubles').checked;
		smash4Singles = $('#config_smash4_singles').checked;
		smash4Doubles = $('#config_smash4_doubles').checked;
	}
	else{
		meleeSingles  = $('#signup_melee_singles').checked;
		meleeDoubles  = $('#signup_melee_doubles').checked;
		pmSingles     = $('#signup_pm_singles').checked;
		pmDoubles	  = $('#signup_pm_doubles').checked;
		smash4Singles = $('#signup_smash4_singles').checked;
		smash4Doubles = $('#signup_smash4_doubles').checked;		
	}
	
	var events = new Events(meleeSingles, meleeDoubles, 
							pmSingles, pmDoubles,
							smash4Singles, smash4Doubles);
	return events;
};

function buildTournamentObject(){
	var configTF = true;
	var name = $('#config_name').val();
	var date = $('#config_date').val();
	var loc  = $('#config_location').val();
	var fee	 = $('#config_prereg_fee').val();
	var events = buildEventsObject(configTF);
	
	var tournament = new Tournament(name, date, loc, fee, events);
	return tournament;
};

function buildSignupObject(){
	var configTF = false;
	var name   = $('signup_name').val();
	var tag    = $('signup_tag').val();
	var region = $('signup_region').val();
	var events = buildEventsObject(configTF);
	
	var signup = new Signup(name, tag, region, events);
	return signup;
};

function sanatizeTextboxes(){
	$('.config_textbox').each(function(){
		$(this).outerHtml = removeTags($(this).outerHtml);
	});
	
	$('.signup_textbox').each(function(){
		$(this).outerHtml = removeTags($(this).outerHtml);
	});
}

$('#config_submit').click(function(){
	
	var configTF = true;
	var tournament = buildTournamentObject(configTF);
	
	//SUBMIT TO DATABASE
});