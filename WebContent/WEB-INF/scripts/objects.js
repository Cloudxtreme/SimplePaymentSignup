class Signup{
	constructor(name, tag, region, tournamentId, events){
		this.name = name;
		this.tag = tag;
		this.region = region;
		this.tournamentId = tournamentId;
		this.events = events;
	}
}

class Events{
	constructor(meleeSingles, meleeDoubles,
				pmSingles, pmDoubles,
				smash4Singles, smash4Doubles){
		this.meleeSingles = meleeSingles;
		this.meleeDoubles = meleeDoubles;
		this.pmSingles = pmSingles;
		this.pmDoubles = pmDoubles;
		this.smash4Singles = smash4Singles;
		this.smash4Doubles = smash4Doubles;
	}
}

class Tournament{
	constructor(name, date, location, fee, events){
		this.name = name;
		this.date = date;
		this.location = location;
		this.fee = fee;
		this.events = events;
	}
}