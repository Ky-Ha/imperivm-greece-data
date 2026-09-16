// void, Settlement set, int playerid

int r;
str hclass;
Unit newunit;


Sleep(100);

r = set.GetCentralBuilding.race;

if (r == Gaul)
	hclass = "GaulHero";
else if (r == ImperialRome)
	hclass = "GreekHero";
else if (r == RepublicanRome){
	int z;

	z=rand(2);
	if (z == 0)
	{
		hclass = "RepublicanRomanHero";
	}
	if (z == 1)
	{
		hclass = "ImperialRomanHero";
	}
}
else if (r == Carthage)
	hclass = "CarthaginianHero";
else if (r == Iberia)
	hclass = "IberianHero";
else if (r == Britain)
	hclass = "BritonHero";
else if (r == Egypt)
	hclass = "EgyptianHero";
else if (r == Germany)
	hclass = "GermanHero";

newunit = Place(GetRandomHeroClass(hclass, playerid), set.GetCentralBuilding().pos, playerid);
newunit.SetLevel(12);
set.ForceAddUnit(newunit);

