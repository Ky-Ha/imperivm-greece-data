//void, Obj this

int Cavalry;
Unit u;

.Progress();

Cavalry = 10;

//spawn mercenary
while (Cavalry) {

	u = Place("HHoplite", .pos, .player);
	.AsBuilding.settlement.ForceAddUnit(u);
	

	Cavalry -= 1;
}